class profile::mainserver::reverseproxy {
    file { '/etc/nginx/conf.d': 
        source => puppet:///modules/files/reverseproxy.conf
    }
}