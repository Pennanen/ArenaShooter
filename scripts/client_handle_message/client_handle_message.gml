
var buffer = argument0;

while(true)
{
var message_id = buffer_read(buffer,buffer_u8);
switch(message_id)
	{
	case 1:
		client =		buffer_read(buffer,buffer_u16);
		xx =			buffer_read(buffer,buffer_f32);
		yy =			buffer_read(buffer,buffer_f32);
		look_angle =	buffer_read(buffer,buffer_f32);
		torso_angle =	buffer_read(buffer,buffer_f32);
		leg_angle =		buffer_read(buffer,buffer_f32);
		i_index =		buffer_read(buffer,buffer_u8);
		hp =			buffer_read(buffer,buffer_u8);
		gun =			buffer_read(buffer,buffer_u16);
		gun_index =		buffer_read(buffer,buffer_u8);
		team =		buffer_read(buffer,buffer_u8);
		if (ds_map_exists(clientmap,string(client)))
			{
				clientObject = clientmap[? string(client)];
				
				if (team = obj_player.playerTeam && clientObject.object_index = obj_playerDummy) 
					{
						with(clientObject){instance_destroy();}
						l = instance_create_depth(room_width/2,room_height/2,0,obj_friendDummy);
						clientmap[? string(client)] = l;
					}
				if (instance_exists(clientObject))
				{
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
			}
		else	
			{
				if (team = obj_player.playerTeam) 
					{
					l = instance_create_depth(room_width/2,room_height/2,0,obj_friendDummy);
					}
				else
					{
					l = instance_create_depth(room_width/2,room_height/2,0,obj_playerDummy);
					}
				clientmap[? string(client)] = l;
			};
	break;

	case 2:
		var client =	buffer_read(buffer,buffer_u16);
		var xx =		buffer_read(buffer,buffer_u16);
		var yy =		buffer_read(buffer,buffer_u16);
		var aa =		buffer_read(buffer,buffer_u16);
		var spd =		buffer_read(buffer,buffer_u16);
		var idd = 		buffer_read(buffer,buffer_s16);
		var team = 		buffer_read(buffer,buffer_u8);
		if (team = obj_player.playerTeam) 
			{
			bul = instance_create_depth(xx,yy,0,obj_friendly_bullet);
			}
			else
			{
			bul = instance_create_depth(xx,yy,0,obj_enemy_bullet);
			}
		bul.spd = spd;
		bul.dir = aa;
		bul.identifier = idd;
		break;
	case 3:
		status = buffer_read(buffer, buffer_s16);
		state = buffer_read(buffer, buffer_u8);
		obj_capture_point.cp_status = status;
		matchState = state;
		if (matchState = 1 && !obj_door.open) 
			{
			with(obj_door)
				{
				if (0 = identifier) {call+=1;}
				multi = 0;
				}
			}
		break;
	case 4:
		status = buffer_read(buffer, buffer_s16);
		obj_player.spawn = status;
		break;
	case 5:
		status = -1;
		status = buffer_read(buffer, buffer_s16);
		if (status != -1)
			{
				with(obj_bullet){if (identifier = other.status){instance_destroy();}}
				with(obj_enemy_bullet){if (identifier = other.status){instance_destroy();}}
				with(obj_friendly_bullet){if (identifier = other.status){instance_destroy();}}
			}
	}
if (buffer_tell(buffer) == buffer_get_size(buffer)) {break;}
}