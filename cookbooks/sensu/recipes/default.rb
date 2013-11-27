include_recipe "apt"

apt_repository "sensu" do
    uri "http://repos.sensuapp.org/apt"
    components ["sensu", "main"]
    key "http://repos.sensuapp.org/apt/pubkey.gpg"

    action :add
end

package "sensu"
