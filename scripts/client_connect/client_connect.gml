var ip = argument0;
var port = argument1;
var connect = -1;
socket = network_create_socket(network_socket_tcp);

connect = network_connect_raw(socket, ip, port);

send_buffer = buffer_create(256,buffer_fixed,1);
clientmap = ds_map_create();

if (connect < 0) {show_error("Could not connect to server!",true)};

return connect;