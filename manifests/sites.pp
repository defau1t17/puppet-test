node master.puppet {
    include role::master
}

node slave1.puppet{
    include role::slave1
}

node slave2.puppet{
    include role::slave2
}

node miniserver.puppet {
    include role::miniserver
}
