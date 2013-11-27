# rabbitmq 

A Chef cookbook to install and configure RabbitMQ server on Ubuntu Server LTS. This cookbook is a fork of the community [rabbitmq](https://github.com/opscode-cookbooks/rabbitmq/blob/master/recipes/mgmt_console.rb) cookbook targeted at Ubuntu Server LTS. 

## Resources/Providers

### plugin
Enables or disables a rabbitmq plugin. Plugins are not supported for releases prior to 2.7.0.

- `:enable` enables a `plugin`
- `:disable` disables a `plugin`

#### Examples
```ruby
rabbitmq_plugin "rabbitmq_stomp" do
  action :enable
end
```

```ruby
rabbitmq_plugin "rabbitmq_shovel" do
  action :disable
end
```

### policy
sets or clears a rabbitmq policy.

- `:set` sets a `policy`
- `:clear` clears a `policy`
- `:list` lists `policy`s

#### Examples
```ruby
rabbitmq_policy "ha-all" do
  pattern "^(?!amq\\.).*"
  params {"ha-mode"=>"all"}
  priority 1
  action :set
end
```

```ruby
rabbitmq_policy "ha-all" do
  action :clear
end
```

### user
Adds and deletes users, fairly simplistic permissions management.

- `:add` adds a `user` with a `password`
- `:delete` deletes a `user`
- `:set_permissions` sets the `permissions` for a `user`, `vhost` is optional
- `:clear_permissions` clears the permissions for a `user`
- `:set_tags` set the tags on a user
- `:clear_tags` clear any tags on a user
- `:change_password` set the `password` for a `user`

#### Examples
```ruby
rabbitmq_user "guest" do
  action :delete
end
```

```ruby
rabbitmq_user "nova" do
  password "sekret"
  action :add
end
```

```ruby
rabbitmq_user "nova" do
  vhost "/nova"
  permissions ".* .* .*"
  action :set_permissions
end
```

```ruby
rabbitmq_user "joe" do
  tag "admin,lead"
  action :set_tags
end
```

### vhost
Adds and deletes vhosts.

- `:add` adds a `vhost`
- `:delete` deletes a `vhost`

#### Examples
``` ruby
rabbitmq_vhost "/nova" do
  action :add
end
```
## License & Authors

- Author:: Benjamin Black <b@b3k.us>
- Author:: Daniel DeLeo <dan@kallistec.com>
- Author:: Matt Ray <matt@opscode.com>
- Author:: Joe Stump <joe@stu.mp>

```text
Copyright (c) 2009-2013, Opscode, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
