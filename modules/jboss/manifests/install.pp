class jboss::install inherits jboss {

# create user and group

  user { 'jboss':
    ensure	=> present,
    managehome	=> true,
    gid		=> 'jboss',
    comment	=> 'Jboss user',
    home	=> '/opt/jboss',
    shell	=> '/bin/bash',
  }

  group { 'jboss':
    ensure	=> present,
  }



# run command to unzip and install

  exec {'installJboss':
    require	=> User['jboss'],
    user	=> 'jboss',
    command	=> '/usr/bin/wget -q http://puppetmaster/repo/packages/jboss/as7/jboss-as-7.1.1.Final.zip -O /home/jboss/jboss.zip && cd /home/jboss && unzip jboss.zip && rm jboss.zip && ln -s jboss-as-7.1.1.Final as7-standalone',
  }


}
