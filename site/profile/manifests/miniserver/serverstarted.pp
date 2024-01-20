class profile::miniserver::serverstarted {
    file{ '/etc/systemd/system/starter.service'
        ensure => file,
        source => 'puppet:///modeles/service/starter.service'
    }

    service { 'starter.service' :
        ensure => running,
        enable => true
    }
}