class profile::mainserver::reverseconfig {
    
    class { selinux:
       mode => 'disabled',
    }
}