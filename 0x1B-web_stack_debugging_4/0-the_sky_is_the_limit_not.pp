# Puppet Manifest: Increase Nginx Server Traffic Handling

# Adjust ULIMIT for Nginx to handle more file descriptors
exec { 'fix--for-nginx':
## Replace the default ULIMIT value with 4096
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
# Set the path for the 'sed' command
  path    => '/usr/local/bin/:/bin/'
}

# Restart Nginx to apply ULIMIT changes
-> exec { 'nginx-restart':
# Restart Nginx to apply the new ULIMIT value
  command => 'nginx restart',
# Set the path for the 'nginx restart' command
  path    => '/etc/init.d/'
}
