class cloudstack::core::node inherits cloudstack {

 package { $cloudstack::node_packages :
   ensure  => present,
 }

 service { $cloudstack::node_services :
   ensure    => running,
   enable    => true,
 }

}