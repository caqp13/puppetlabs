class java::install {
  $javaversion = hiera('java::javaversion',"null")


  exec {'installJava':
    user	=> 'root',
    command	=> "/bin/rpm -ivh http://puppetmaster/repo/packages/java/jdk-${javaversion}-x64.rpm",
    unless	=> '/usr/bin/test -f /usr/java/latest/bin/java'
  }

}
