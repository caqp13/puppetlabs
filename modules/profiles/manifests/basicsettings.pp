class profiles::basicsettings {
 
  file {'/data':
    ensure => 'directory',
    mode   => '0755',
    owner  => 'root',
  } 

}
