var port = argument0;
server = -1;
server = network_create_server_raw(network_socket_tcp,port,argument1);
client_id_counter = 0;
team_id_counter = 1;

clientmap = ds_map_create();
send_buffer = buffer_create(512,buffer_grow,1);
bullet_buffer = buffer_create(256,buffer_grow,1);
tick_buffer = buffer_create(256,buffer_grow,1);
object_buffer = buffer_create(256,buffer_grow,1);
if (server = -1){show_error("cannot create server",true)}
return server;
