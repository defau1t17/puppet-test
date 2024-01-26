class role::master {
    include profile::mainserver::install
    include profile::mainserver::reverseproxy
    include profile::mainserver::reverseconfig
    include profile::mainserver::startup
}