
/// @description  Start game - connect to a remote server
global.ServerName = text;

network_destroy(global.broadcast_server);
global.broadcast_server = -1;

room_goto(rm_lobby);


