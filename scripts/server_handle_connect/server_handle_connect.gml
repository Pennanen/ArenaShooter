var socket_id = argument0;

l = instance_create_depth(room_width/2,room_height/2,0,obj_serverClient);
l.socket_id = socket_id;
l.client_id = client_id_counter++;
l.team_id = team_id_counter;
team_id_counter++;
if (team_id_counter > 2) {team_id_counter = 1}
if (client_id_counter >= 65000){client_id_counter = 0};

clientmap[? string(socket_id)] = l;
