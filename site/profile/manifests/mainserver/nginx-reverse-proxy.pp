class profile::mainserver::nginx-reverse-proxy {
    file { '/etc/nginx/conf.d': 
        source => puppet:///modules/files/reverseproxy.conf
    }
}