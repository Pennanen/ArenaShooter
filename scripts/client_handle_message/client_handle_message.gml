
var buffer = argument0;

while(true)
{
var message_id = buffer_read(buffer,buffer_u8);

switch(message_id)
	{
	case 1:
		client = buffer_read(buffer,buffer_u16);
		xx = buffer_read(buffer,buffer_u16);
		yy = buffer_read(buffer,buffer_u16);
		look_angle = buffer_read(buffer,buffer_u16);
		torso_angle = buffer_read(buffer,buffer_u16);
		leg_angle = buffer_read(buffer,buffer_u16);
		i_index = buffer_read(buffer,buffer_u8);
		hp = buffer_read(buffer,buffer_u8);
		gun = buffer_read(buffer,buffer_u16);
		gun_index = buffer_read(buffer,buffer_u8);
		if (ds_map_exists(clientmap,string(client)))
			{ 
				clientObject = clientmap[? string(client)]
				clientObject.x = xx;
				clientObject.y = yy;
				clientObject.look_angle = look_angle;
				clientObject.torso_angle = torso_angle;
				clientObject.leg_angle = leg_angle;
				clientObject.image_index = i_index;
				clientObject.hp = hp;
				clientObject.gun = gun;
				clientObject.gun_index = gun_index;
			}
			else	
			{
				l = instance_create_depth(xx,yy,0,obj_playerDummy);
				clientmap[? string(client)] = l;
			};
			
			with(obj_serverClient)
			{
				if (client_id != client_id_current) {network_send_raw(self.socket_id,other.send_buffer,buffer_tell(other.send_buffer))};
			}
	break;
	case 2:
		client = buffer_read(buffer,buffer_u16);
		xx = buffer_read(buffer,buffer_u16);
		yy = buffer_read(buffer,buffer_u16);
		aa = buffer_read(buffer,buffer_u16);
		spd = buffer_read(buffer,buffer_u16);
		
		bul = instance_create_depth(xx,yy,0,obj_enemy_bullet);
		bul.spd = spd;
		bul.dir = aa;
			with(obj_serverClient)
			{
				if (client_id != client_id_current) {network_send_raw(self.socket_id,other.send_buffer,buffer_tell(other.send_buffer))};
			}
	
	
	}
	if (buffer_tell(buffer) == buffer_get_size(buffer)) {break;}
}