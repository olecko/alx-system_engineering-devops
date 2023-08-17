# Increases the amount of traffic an Nginx server can handle.

# Increase the ULIMIT of the default file
# fixes increase limit
exec { 'sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 5000\"/g" /etc/default/nginx':
  path => '/usr/bin:/usr/sbin:/bin',
}

# Restart Nginx
-> exec {'restart service':
  command => '/usr/sbin/service nginx restart',
}
