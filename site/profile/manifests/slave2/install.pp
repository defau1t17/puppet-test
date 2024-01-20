class profile::slave2::install{
    
    $packages = ['httpd', 'php-fpm']
    package{ $packages :
        ensure => installed,
    }
    
}