class profiles::jboss_master {
#  #class {'jboss':
#    require	=> jdk::Install,
#    version	=> 'blablabal',
#    javaMxs	=> 'blabla',

  class {'jboss_standalone':}

}
