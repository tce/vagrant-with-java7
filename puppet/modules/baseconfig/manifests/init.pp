# == Class: baseconfig
#
# Performs initial configuration tasks for all Vagrant boxes.
#


class baseconfig {
 # exec { 'apt-get clean': command => '/usr/bin/agt-get clean'; }

  exec { 'apt-get update': # require => Package['python-software-properties'],
    command => '/usr/bin/apt-get update'; }

 # exec { 'apt-get dist-upgrade': command => '/usr/bin/apt-get dist-upgrade'; }

  #exec { 'sudo apt-get install python-software-properties':
   # command => '/usr/bin/sudo /usr/bin/apt-get install python-software-properties ',
    #timeout => 0
  #}

  # exec {'apt-get install python-software-properties':
  #  command => '/usr/bin/apt-get install python-software-properties';

  #}


  file { '/home/vagrant/.bashrc':
    owner  => 'vagrant',
    group  => 'vagrant',
    mode   => '0644',
    source => 'puppet:///modules/baseconfig/bashrc';
  }
}
