

#export DB_SOCK=/usr/local/var/run/openvswitch/db.sock
export DB_SOCK=/var/run/openvswitch/db.sock
#ovs-vswitchd  unix:$DB_SOCK --pidfile --detach 
ovs-vswitchd --dpdk -c 0x1 -n 4 -- unix:$DB_SOCK --pidfile --detach 
