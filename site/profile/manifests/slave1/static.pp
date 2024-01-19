class profile::slave1::static {
    file { '/usr/share/nginx/html' :
        ensure => file,
        source => 'puppet:///modules/nginx/files/static.html'
    }

   file { '/etc/nginx/conf.d/' :
        ensure => file,
        source => 'puppet:///modules/nginx/files/static.conf'
    }
}