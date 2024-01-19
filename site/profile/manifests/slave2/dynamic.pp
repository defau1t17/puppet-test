class profile::slave2::dynamic {
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
}