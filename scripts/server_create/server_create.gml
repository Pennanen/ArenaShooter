var port = argument0;
server = -1;
server = network_create_server_raw(network_socket_tcp,port,8);
client_id_counter = 0;

clientmap = ds_map_create();
send_buffer = buffer_create(256,buffer_fixed,1);

if (server < 0) {show_error("Could not create server!",true);}

return server;