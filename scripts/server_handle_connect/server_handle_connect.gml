var socket_id = argument0;

l = instance_create_depth(room_width/2,room_height/2,0,obj_serverClient);
l.socket_id = socket_id;
l.client_id = client_id_counter++;
l.team_id = team_id_counter;
team_id_counter++;
if (team_id_counter > 2) {team_id_counter = 1}
if (client_id_counter >= 65000){client_id_counter = 0};

clientmap[? string(socket_id)] = l;

		buffer_seek(tick_buffer, buffer_seek_start, 0);
		
		buffer_write(tick_buffer, buffer_u8, 3);
		buffer_write(tick_buffer, buffer_s16, cp_status);
		buffer_write(tick_buffer, buffer_u8, matchState);
		with(obj_serverClient)
			{
			network_send_raw(self.socket_id,other.tick_buffer,buffer_tell(other.tick_buffer))
			}
