class profile::slave1::startup{
    
    service{ 'httpd' : 
        ensure => running,
    }
    
}