class profile::slave1::staticcontent {
    file { '/usr/share/nginx/html' :
        ensure => file,
        source => 'puppet:///modules/files/static.html'
    }

   file { '/etc/nginx/conf.d/' :
        ensure => file,
        source => 'puppet:///modules/files/static.conf'
    }
}