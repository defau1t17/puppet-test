class profile::miniserver::minecraftpackege {
    remote_file { 'Download minecraft server' :
        source => 'https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar',
        path   => '/opt/minecraft/server.jar,
        ensure => present,
    }
    
}