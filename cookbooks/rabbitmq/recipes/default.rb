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
