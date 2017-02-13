class profiles::git_server {


#  create_resources(::packages::linux_install, hiera_array('profiles::webserver_common::packages'))

  $packages = hiera('profiles::git_server::packages')

  Package { $packages :
    ensure => installed,
  }

  class {'git_server':}

}
