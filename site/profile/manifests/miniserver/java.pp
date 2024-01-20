class profile::miniserver::javaconfig {
    package{ 'java-1.8.0-openjdk' :
        ensure => 'installed',
    }

    package { 'screen':
        ensure => 'installed',
    }

}