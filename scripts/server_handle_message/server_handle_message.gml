var socket_id = argument0;
var buffer = argument1;
var client_id_current = clientmap[? string(socket_id)].client_id;
while(true)
{
var message_id = buffer_read(buffer,buffer_u8);

switch(message_id)
	{
	case 1:

		var xx =			buffer_read(buffer, buffer_f32);
		var yy =			buffer_read(buffer, buffer_f32);
		var look_angle =	buffer_read(buffer, buffer_f32);
		var torso_angle =	buffer_read(buffer, buffer_f32);
		var leg_angle =		buffer_read(buffer, buffer_f32);
		var i_index =		buffer_read(buffer, buffer_u8);
		var hp =			buffer_read(buffer, buffer_u8);
		var gun =			buffer_read(buffer, buffer_u16);
		var gun_index =		buffer_read(buffer, buffer_u8);

		
		buffer_seek(send_buffer, buffer_seek_start, 0);
		
		buffer_write(send_buffer, buffer_u8, 1);
		buffer_write(send_buffer, buffer_u16, client_id_current);
		buffer_write(send_buffer, buffer_f32, xx);
		buffer_write(send_buffer, buffer_f32, yy);
		buffer_write(send_buffer, buffer_f32, look_angle);
		buffer_write(send_buffer, buffer_f32, torso_angle);
		buffer_write(send_buffer, buffer_f32, leg_angle);
		buffer_write(send_buffer, buffer_u8, i_index);
		buffer_write(send_buffer, buffer_u8, hp);
		buffer_write(send_buffer, buffer_u16, gun);
		buffer_write(send_buffer, buffer_u8, gun_index);
		

		with(obj_serverClient)
			{
			if (client_id != client_id_current) {network_send_raw(self.socket_id,other.send_buffer,buffer_tell(other.send_buffer))}
			}
	break;
	case 2:
		var xx =		buffer_read(buffer, buffer_u16);
		var yy =		buffer_read(buffer, buffer_u16);
		var aa =		buffer_read(buffer, buffer_u16);
		var spd =		buffer_read(buffer, buffer_u16);
		var identifier =buffer_read(buffer, buffer_u16);
		buffer_seek(bullet_buffer, buffer_seek_start, 0);
		
		buffer_write(bullet_buffer, buffer_u8, 2);
		buffer_write(bullet_buffer, buffer_u16, client_id_current);
		buffer_write(bullet_buffer, buffer_u16, xx);
		buffer_write(bullet_buffer, buffer_u16, yy);
		buffer_write(bullet_buffer, buffer_u16, aa);
		buffer_write(bullet_buffer, buffer_u16, spd);
		buffer_write(bullet_buffer, buffer_s16, identifier);
		with(obj_serverClient)
			{
			if (client_id != client_id_current) {network_send_raw(self.socket_id,other.bullet_buffer,buffer_tell(other.bullet_buffer))}
			}
	break;
	case 3:
		var status = buffer_read(buffer, buffer_s16);
		in_team = 0;
				with(obj_serverClient){if (team_id = 1 && client_id = client_id_current) {other.in_team = 1}}
				with(obj_serverClient){if (team_id = 2 && client_id = client_id_current) {other.in_team = 2}}
				
				if (in_team = 1) {cp_status += 1};
				else if (in_team = 2) {cp_status -= 1};
		
		buffer_seek(tick_buffer, buffer_seek_start, 0);
		
		buffer_write(tick_buffer, buffer_u8, 3);
		buffer_write(tick_buffer, buffer_s16, cp_status);
		
		with(obj_serverClient)
			{
			network_send_raw(self.socket_id,other.tick_buffer,buffer_tell(other.tick_buffer))
			}
	break;
	case 4:
		in_team = 0;
		
				with(obj_serverClient){if (team_id = 1 && client_id = client_id_current) {other.in_team = 1}}
				with(obj_serverClient){if (team_id = 2 && client_id = client_id_current) {other.in_team = 2}}
				
		buffer_seek(tick_buffer, buffer_seek_start, 0);
		buffer_write(tick_buffer, buffer_u8, 4);	
		buffer_write(tick_buffer, buffer_s16, in_team);
		
		with(obj_serverClient)
			{
			if (client_id = client_id_current) {network_send_raw(self.socket_id,other.tick_buffer,buffer_tell(other.tick_buffer))}
			}
	break;
	case 5:
		var identifier = buffer_read(buffer, buffer_s16);
		
		buffer_seek(tick_buffer, buffer_seek_start, 0);
		
		buffer_write(tick_buffer, buffer_u8, 5);
		buffer_write(tick_buffer, buffer_s16, identifier);
		
		with(obj_serverClient)
			{
			network_send_raw(self.socket_id,other.tick_buffer,buffer_tell(other.tick_buffer))
			}
	}
	if (buffer_tell(buffer) == buffer_get_size(buffer)) {break;}
}