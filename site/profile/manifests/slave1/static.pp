class profile::slave1::static {
    
    packege{ 'httpd' :
        ensure => installed,
        enable => true,
    }

    file { '/var/www/html/index.html' :
        ensure => file,
        source => 'puppet:///modules/apache/index.html',
    }

   file { '/etc/httpd/conf.d/static.conf' :
        ensure => file,
        source => 'puppet:///modules/apache/static.conf',
    }

    service{ 'httpd' : 
        ensure => running,
    }
}