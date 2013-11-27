# rabbitmq 

A Chef cookbook to install and configure RabbitMQ server on Ubuntu Server LTS. This cookbook is a fork of the community [rabbitmq](https://github.com/opscode-cookbooks/rabbitmq/blob/master/recipes/mgmt_console.rb) cookbook targeted at Ubuntu Server LTS. 

Requirements
------------
TODO: List your cookbook requirements. Be sure to include any requirements this cookbook has on platforms, libraries, other cookbooks, packages, operating systems, etc.

e.g.
#### packages
- `toaster` - rabbitmq needs toaster to brown your bagel.

Attributes
----------
TODO: List you cookbook attributes here.

e.g.
#### rabbitmq::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['rabbitmq']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### rabbitmq::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `rabbitmq` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[rabbitmq]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
