var ip = argument0;
var port = argument1;
connect = -1;
socket = network_create_socket(network_socket_tcp);

connect = network_connect_raw(socket, ip, port);
if (connect < 0) {show_error("Could not connect to server!",true)};
send_buffer = buffer_create(512,buffer_grow,1);
bullet_buffer = buffer_create(256,buffer_grow,1);
tick_buffer = buffer_create(256,buffer_grow,1);
object_buffer = buffer_create(256,buffer_grow,1);
clientmap = ds_map_create();
return connect;