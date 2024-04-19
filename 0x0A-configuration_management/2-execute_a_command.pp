#!/usr/bin/env puppet
# Create a manifest that kills a process named killmenow using Puppet

exec { 'kill':
  command   => 'pkill -f killmenow',
  path      => ['/usr/bin', '/usr/sbin'],
  returns   => ['0', '1'],
  logoutput => true,
}
