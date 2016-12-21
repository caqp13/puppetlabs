class java {

  $dojava = hiera('java::dojava',false)
  $javaversion = hiera('java::javaversion',null)


  if str2bool("$dojava") {

  class { '::java::install': }
  class { '::java::config': }

  }


}
