class profile::slave1::staticcontent {
    file { '/usr/share/nginx/html' :
        source => puppet:///modules/files/static.html
    }

   file { '/etc/nginx/conf.d/' :
        source => puppet:///modules/files/static.conf
    }
}