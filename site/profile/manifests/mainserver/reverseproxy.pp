class profile::mainserver::reverseproxy {
    
    package{ 'nginx' :
        ensure => installed,
    }
  

    file { '/etc/nginx/conf.d/reverseproxy.conf': 
        ensure => file,
        source => 'puppet:///modules/apache/reverseproxy.conf'
    }

    service{ 'nginx' :
        ensure => running, 
    }
}