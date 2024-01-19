class profile::mainserver::reverseproxy {
    file { '/etc/nginx/conf.d/reverseproxy.conf': 
        ensure => file,
        source => 'puppet:///modules/files/reverseproxy.conf'
    }
}