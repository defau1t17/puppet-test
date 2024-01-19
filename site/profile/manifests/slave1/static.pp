class profile::slave1::static {
    file { '/usr/share/nginx/html' :
        source => 'puppet:///modules/nginx/static.html'
    }

   file { '/etc/nginx/conf.d/' :
        source => 'puppet:///modules/nginx/static.conf'
    }
}