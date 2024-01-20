class profile::slave2::startup{
    
    $packages = ['httpd', 'php-fpm']
    service{ $packages :
        ensure => running,
    }
    
}