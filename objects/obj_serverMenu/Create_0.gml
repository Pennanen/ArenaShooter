global.Server = -1;
global.connectip = "127.0.0.1";
global.haveserver = false;
global.ServerType = network_socket_tcp;
global.PlayerTotal= 0;

text = "Player";

global.serverlist = ds_list_create();
global.servernames = ds_list_create();

bd_port = 6511;
// Create a server and listen on our broadcast port....
global.broadcast_server = network_create_server(network_socket_udp, bd_port, 100);
