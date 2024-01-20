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

    include wget
    wget::fetch {'test fetch' :
        source      => 'https://piston-data.mojang.com/v1/objects/8dd1a28015f51b1803213892b50b7b4fc76e594d/server.jar',
        destination => '/tmp/',
        timeout     => 0,
        verbose     => false,
    }


    file{ '/etc/systemd/system/starter.service' :
        ensure => 'file',
        source => 'puppet:///modules/minecraftserver/starter.service',
    }

    service { 'starter.service' :
        ensure => running,
        enable => true,
    }

    file_line { 'Update Policy':
      ensure => present,
      path   => '/opt/minecraft/eula.txt',
      line   => "eula=true",
      match  => 'eula=false',
   }
  
    
}