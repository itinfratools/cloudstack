class cloudstack {
  
  # Global vars
  
  $default_packages = [
    ntpd,
  ]

  $default_services
  
  
  # $apache = $operatingsystem ? {
  #   centos                => 'httpd',
  #   redhat                => 'httpd',
  #   /(?i)(ubuntu|debian)/ => 'apache2',
  #   default               => undef,
  # }

  
  # Management vars
  
  $management_packages = [
    # var,
  ]

  $management_services
  
  # Node vars
  
  $node_packages = [
    # var,
  ]  

  $node_services

  # Install default packages
  package { $default_packages :
    ensure  => present,
    require => File['/etc/yum.repos.d/cloudstack.repo'],
  }
  
  # Change selinux to permissive mode
  exec { 'change_selinux_to_permissive' :
    command => 'setenforce permissive',
    onlyif  => '/usr/sbin/getenforce | /bin/grep Disabled',
  }
  
  # Cloudstack repo
  file { '/etc/yum.repos.d/cloudstack.repo' :
    ensure  => present,
    owner   => root,
    group   => root,
    content => template('cloudstack/cloudstack.repo.erb'),
  }
  
}