class jboss_standalone {


# class jboss-standalone {$version, $javaXms, $javaXmx, etc...
# 





# define javaxmms javamaxpermsize etc later



class { '::jboss_standalone::install': }
#class { '::jboss_standalone::config': }
#class { '::jboss_standalone::service': }

}
