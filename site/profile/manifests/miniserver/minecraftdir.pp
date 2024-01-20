class profile::miniserver::minecraftdir {

    file { '/opt/minecraft' :
        ensure => 'directory',
    }
}