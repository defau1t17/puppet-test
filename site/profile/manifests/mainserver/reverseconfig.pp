class profile::mainserver::reverseconfig {
    
    include selinux

    class { selinux:
       mode => 'disabled',
    }
}