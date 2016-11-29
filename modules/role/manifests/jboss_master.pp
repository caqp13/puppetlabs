class role::jboss_master inherits role {
  include profiles::webserver_common
  include profiles::jboss_master
}
