class profile::mainserver::install{
    package{ 'nginx' :
        ensure => installed,
    }
}