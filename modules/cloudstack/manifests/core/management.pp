class cloudstack::core::management inherits cloudstack {

# If the Management Server is RHEL or CentOS, copy vhd-util to /usr/share/cloudstack-common/scripts/vm/hypervisor/xenserver.
# 
# http://download.cloud.com.s3.amazonaws.com/tools/vhd-util

# Set management facter $server_type

  package { $cloudstack::management_packages :
    ensure  => present,
  }

  service { $cloudstack::management_services :
    ensure    => running,
    enable    => true,
  }

    
}