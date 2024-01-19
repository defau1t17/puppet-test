class profile::slave1::static {
    file { '/usr/share/nginx/html/static.html' :
        ensure => file,
        source => 'puppet:///modules/nginx/static.html'
    }

   file { '/etc/nginx/conf.d/static.conf' :
        ensure => file,
        source => 'puppet:///modules/nginx/static.conf'
    }
}