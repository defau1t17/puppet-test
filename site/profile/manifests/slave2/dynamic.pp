class profile::slave2::dynamic {
    
    $packages = ['httpd', 'php-fpm']
    package{ $packages :
        ensure => installed,
    }
    
    file { '/var/www/php':
        ensure => 'directory',
    } 
    
    file { '/var/www/php/index.php' :
        ensure => file,
        source => 'puppet:///modules/apache/index.php'
    }

   file { '/etc/httpd/conf.d/dynamic.conf' : 
        ensure => file,
        source => 'puppet:///modules/apache/dynamic.conf'
    }

    service{ $packages :
        ensure => running,
    }
}