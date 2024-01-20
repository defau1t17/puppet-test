class role::slave1 {
    include profile::slave1::install
    include profile::slave1::static
    include profile::slave1::startup
}