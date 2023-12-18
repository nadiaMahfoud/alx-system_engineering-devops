# Puppet Manifest: Allow user 'holberton' to login and open files without encountering errors

# Increase the hard file limit for user 'holberton'
exec { 'increase-hard-file-limit-for-holberton-user':
  command => 'sed -i "/holberton hard/s/5/50000/" /etc/security/limits.conf',  # Set hard file limit to 50000 for user 'holberton'
  path    => '/usr/local/bin/:/bin/'  # Set the path for the 'sed' command
}

# Increase the soft file limit for user 'holberton'
exec { 'increase-soft-file-limit-for-holberton-user':
  command => 'sed -i "/holberton soft/s/4/50000/" /etc/security/limits.conf',  # Set soft file limit to 50000 for user 'holberton'
  path    => '/usr/local/bin/:/bin/'  # Set the path for the 'sed' command
}
