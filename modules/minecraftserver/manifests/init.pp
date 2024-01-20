class minecraftserver {
    package{ 'openjdk-17-jdk-headless' :
        ensure => 'installed',
    }

    file { '/opt/minecraft' :
        ensure => 'directory',
    }

    exec { 'download minecraft server' :
        command => '/usr/bin/wget https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar -O /opt/minecraft/server.jar',
        creates => '/opt/minecraft/server.jar',
    }

    file{ '/etc/systemd/system/starter.service' :
        ensure => 'file',
        source => 'puppet:///modules/minecraftserver/starter.service',
    }

    service { 'starter.service' :
        ensure => running,
        enable => true,
    }
  
    
}