include_recipe "apt"

# Add the APT repository
apt_repository "rabbitmq" do
    uri "http://www.rabbitmq.com/debian/"
    key "http://www.rabbitmq.com/rabbitmq-signing-key-public.asc"
    components ["testing", "main"]

    action :add
end

package "erlang-nox"
package "rabbitmq-server"

# Swap in the Upstart service.
service "rabbitmq-server" do
    action [:stop]
    only_if { File.exists?("/etc/init.d/rabbitmq-server") }
end

execute "remove rabbitmq init.d command" do
    command "update-rc.d -f rabbitmq-server remove"
end

file "/etc/init.d/rabbitmq-server" do
    action :delete
end

template "/etc/init/rabbitmq-server.conf" do
    source "rabbitmq.upstart.conf.erb"
    owner "root"
    group "root"
    mode 0644
    variables(:max_file_descriptors => node["rabbitmq"]["max_file_descriptors"])
end

service "rabbitmq-server" do
    provider Chef::Provider::Service::Upstart
    action [:enable, :start]
end

if node['rabbitmq']['logdir']
  directory node['rabbitmq']['logdir'] do
    owner 'rabbitmq'
    group 'rabbitmq'
    mode '775'
    recursive true
  end
end

template "#{node['rabbitmq']['config_root']}/rabbitmq-env.conf" do
  source 'rabbitmq-env.conf.erb'
  owner 'root'
  group 'root'
  mode 00644
  notifies :restart, "service[rabbitmq-server]"
end

template "#{node['rabbitmq']['config_root']}/rabbitmq.config" do
  source 'rabbitmq.config.erb'
  owner 'root'
  group 'root'
  mode 00644
  notifies :restart, "service[rabbitmq-server]"
end
