class minecraftserver {
    package{ 'java-1.8.0-openjdk' :
        ensure => 'installed',
    }

    package { 'screen':
        ensure => 'installed',
    }

    file { '/opt/minecraft' :
        ensure => 'directory',
    }

    file{ '/etc/systemd/system/starter.service' :
        ensure => 'file',
        source => 'puppet:///modeles/minecraftserver/starter.service',
    }

    service { 'starter.service' :
        ensure => running,
        enable => true,
    }
  
    
}