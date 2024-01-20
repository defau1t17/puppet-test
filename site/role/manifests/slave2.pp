class role::slave2 {
    include profile::slave2::install
    include profile::slave2::createdir
    include profile::slave2::dynamic
    include profile::slave2::startup
}