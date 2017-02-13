class git_server::install inherits git_server {

# create user and group



# run command to unzip and install

  exec {'installGitRepo':
    user	=> 'root',
    command	=> '/usr/bin/curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash',
    unless	=> '/usr/bin/test -f /etc/yum.repos.d/gitlab_gitlab-ce.repo' 
  }

  Package{'gitlab-ce':
    require	=> Exec['installGitRepo'],
    ensure 	=> installed,
  }

  exec {'configGit':
    user	=> 'root',
    command	=> '/usr/bin/gitlab-ctl reconfigure',
    require	=>  Package['gitlab-ce'],
    unless	=> '/bin/ps -ef|grep postgres|grep -v grep'
  }
}
