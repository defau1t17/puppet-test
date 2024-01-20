class minecraftserver{
    package{ 'java-1.8.0-openjdk' :
        ensure => 'installed',
    }

    package { 'screen':
        ensure => 'installed',
    }

    file { '/opt/minecraft' :
        ensure => 'directory',
    }

    remote_file { 'Download minecraft server' :
        source => 'https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar',
        path   => '/opt/minecraft/server.jar',
        ensure => present,
    }

    file { '/opt/minecraft/server.jar' :
        ensure => file,
        mode => '0777',  
    }
    
    file{ '/etc/systemd/system/starter.service'
        ensure => file,
        source => 'puppet:///modeles/minecraft/starter.service',
    }

    service { 'starter.service' :
        ensure => running,
        enable => true,
    }
}