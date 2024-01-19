class profile::slave2::dynamic {
    file { '/usr/share/nginx/html/dynamic.php' :
        ensure => file,
        source => 'puppet:///modules/files/dynamic.php'
    }

   file { '/etc/nginx/conf.d/dynamic.conf' : 
        ensure => file,
        source => 'puppet:///modules/files/dynamic.conf'
    }
}