node basenode {
  # exec { "route add -net 10.2.45.0 netmask 255.255.255.0 gw 10.10.10.1 eth1":
  #         unless => 'netstat -nrv | grep -e "10.2.45.0.*10.10.10.1"',
  # }
}

# Install all management server resources in a single node
node management inherits basenode {
  include cloudstack::core::management
  # include cloudstack::db::mysql
  # include cloudstack::storage::primary
  # include cloudstack::storage::secondary
}

# Install hypervisor node
node node01 inherits basenode {
  # include cloudstack::core::node
  # include cloudstack::hypervisor::xen
  # include cloudstack::Hypervisor::lxc
}