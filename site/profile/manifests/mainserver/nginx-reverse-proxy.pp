class profile::mainserver::reverseproxy {
    file { '/etc/nginx/conf.d': 
        ensure => file,
        source => 'puppet:///modules/files/reverseproxy.conf'
    }
}