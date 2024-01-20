class role::miniserver {
    include profile::miniserver::minecraftdir
    include profile::miniserver::javaconfig
    include profile::miniserver::minecraftpackege
    include profile::miniserver::serverstarted

}