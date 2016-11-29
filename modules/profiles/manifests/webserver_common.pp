class profiles::webserver_common {


#  create_resources(::packages::linux_install, hiera_array('profiles::webserver_common::packages'))

  $packages = hiera('profiles::webserver_common::packages')

  Package { $packages :
    ensure => installed,
  }


}
