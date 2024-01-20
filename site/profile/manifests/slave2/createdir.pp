class profile::slave2::createdir {

    file { '/var/www/php':
        ensure => 'directory',
    } 
}