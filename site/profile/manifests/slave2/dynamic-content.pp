class profile::slave2::dynamiccontent {
    file { '/usr/share/nginx/html' :
        ensure => file,
        source => 'puppet:///modules/files/dynamic.php'
    }

   file { '/etc/nginx/conf.d/' : 
        ensure => file,
        source => 'puppet:///modules/files/dynamic.conf'
    }
}