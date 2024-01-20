class minecraftserver {
    package{ 'openjdk-17-jdk-headless' :
        ensure => 'installed',
    }

    file { '/opt/minecraft' :
        ensure => 'directory',
    }

    include wget
    wget::fetch {'test fetch' :
        source      => 'https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar',
        destination => '/opt/minecraft/minecraft_server.1.20.4.jar',
        timeout     => 0,
        verbose     => false,
    }
    
    file { '/opt/minecraft/server.jar' :
        ensure => 'file',
        mode => '0777',
    }
    
    file{ '/etc/systemd/system/starter.service' :
        ensure => 'file',
        source => 'puppet:///modules/minecraftserver/starter.service',
    }

    file_line { 'Update Server Policy':
      ensure => present,
      path   => '/opt/minecraft/eula.txt',
      line   => "eula=true",
      match  => 'eula=false',
   }

    service { 'starter.service' :
        ensure => running,
        enable => true,
    }
    
}