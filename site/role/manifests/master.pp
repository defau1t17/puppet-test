class role::master {
    include profile::mainserver::install
    include profile::mainserver::reverseproxy
    include profile::mainserver::selinux
    include profile::mainserver::startup
}