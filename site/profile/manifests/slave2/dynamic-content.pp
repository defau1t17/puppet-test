class profile::slave2::dynamiccontent {
    file { '/usr/share/nginx/html' :
        source => puppet:///modules/files/dynamic.php
    }

   file { '/etc/nginx/conf.d/' : 
        source => puppet:///modules/files/dynamic.conf
    }
}