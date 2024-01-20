class profile::mainserver::reverseproxy {
    
    package{ 'nginx' :
        ensure => installed,
    }

    service{ 'nginx' :
        ensure => running, 
    }

    exec {'include proxy' : 
        command => 'setsebool httpd_can_network_connect on',
    }
    
    
    file { '/etc/nginx/conf.d/reverseproxy.conf': 
        ensure => file,
        source => 'puppet:///modules/apache/reverseproxy.conf'
    }

    
}