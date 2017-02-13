class git_server {


# class jboss-standalone {$version, $javaXms, $javaXmx, etc...
# 





# define javaxmms javamaxpermsize etc later



class { '::git_server::install': }
#class { '::jboss_standalone::config': }
#class { '::jboss_standalone::service': }

}
