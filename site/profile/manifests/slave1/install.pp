class profile::slave1::install{
    
    package{ 'httpd' :
        ensure => installed,
    }
    
}