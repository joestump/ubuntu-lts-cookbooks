# being nil, the rabbitmq defaults will be used
default["rabbitmq"]["nodename"]  = nil
default["rabbitmq"]["address"]  = nil
default["rabbitmq"]["port"]  = nil
default["rabbitmq"]["config"] = nil
default["rabbitmq"]["logdir"] = "/var/log/rabbitmq"
default["rabbitmq"]["mnesiadir"] = "/var/lib/rabbitmq/mnesia"
default["rabbitmq"]["service_name"] = "rabbitmq-server"

# config file location
# http://www.rabbitmq.com/configure.html#define-environment-variables
# "The .config extension is automatically appended by the Erlang runtime."
default["rabbitmq"]["config_root"] = "/etc/rabbitmq"
default["rabbitmq"]["config"] = "/etc/rabbitmq/rabbitmq"

# rabbitmq.config defaults
default["rabbitmq"]["default_user"] = "guest"
default["rabbitmq"]["default_pass"] = "guest"

# bind erlang networking to localhost
default["rabbitmq"]["local_erl_networking"] = false

# bind rabbit and erlang networking to an address
default["rabbitmq"]["erl_networking_bind_address"] = nil

# resource usage
default["rabbitmq"]["disk_free_limit_relative"] = nil
default["rabbitmq"]["vm_memory_high_watermark"] = nil
default["rabbitmq"]["max_file_descriptors"] = 1024
default["rabbitmq"]["open_file_limit"] = nil

# job control
default["rabbitmq"]["job_control"] = "initd"

#ssl
default["rabbitmq"]["ssl"] = false
default["rabbitmq"]["ssl_port"] = 5671
default["rabbitmq"]["ssl_cacert"] = "/path/to/cacert.pem"
default["rabbitmq"]["ssl_cert"] = "/path/to/cert.pem"
default["rabbitmq"]["ssl_key"] = "/path/to/key.pem"
default["rabbitmq"]["ssl_verify"] = "verify_none"
default["rabbitmq"]["ssl_fail_if_no_peer_cert"] = false
default["rabbitmq"]["web_console_ssl"] = false
default["rabbitmq"]["web_console_ssl_port"] = 15671

#tcp listen options
default["rabbitmq"]["tcp_listen_packet"] = "raw"
default["rabbitmq"]["tcp_listen_reuseaddr"]  = true
default["rabbitmq"]["tcp_listen_backlog"] = 128
default["rabbitmq"]["tcp_listen_nodelay"] = true
default["rabbitmq"]["tcp_listen_exit_on_close"] = false
default["rabbitmq"]["tcp_listen_keepalive"] = false
