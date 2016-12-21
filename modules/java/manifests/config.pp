class java::config {

  file {"/etc/profile.d/java.sh":
    mode	=> '0755',
    owner	=> 'root',
    group	=> 'root',
    source	=> 'puppet:///modules/java/java.sh',
  }

}
