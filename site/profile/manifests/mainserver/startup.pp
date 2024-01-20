class profile::mainserver::startup{
    
    service{ 'nginx' :
        ensure => running, 
    }
}