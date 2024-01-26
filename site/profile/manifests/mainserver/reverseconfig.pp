class profile::mainserver::reverseconfig {
    
    selinux::module { 'disable selinux'
        mode => 'disabled'
    }

}