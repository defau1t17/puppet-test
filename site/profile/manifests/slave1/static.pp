class profile::slave1::static {
    file { '/var/www/html/index.html' :
        ensure => file,
        source => 'puppet:///modules/apache/index.html'
    }

   file { '/etc/nginx/conf.d/static.conf' :
        ensure => file,
        source => 'puppet:///modules/apache/static.conf'
    }
}