class profile::miniserver::minecraftpackege {
    include wget

    wget::fetch { 'https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar' :
        destination => '/opt/minecraft',
    }

    file { '/opt/minecraft/server.jar' :
        ensure => file,
        mode => '0111'     
    }
    
}