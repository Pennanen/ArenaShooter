
var buffer = argument0;

while(true)
{
var message_id = buffer_read(buffer,buffer_u8);
switch(message_id)
	{
	case 1:
		client =		buffer_read(buffer,buffer_u16);
		xx =			buffer_read(buffer,buffer_s16);
		yy =			buffer_read(buffer,buffer_s16);
		look_angle =	buffer_read(buffer,buffer_s16);
		torso_angle =	buffer_read(buffer,buffer_s16);
		leg_angle =		buffer_read(buffer,buffer_s16);
		i_index =		buffer_read(buffer,buffer_u8);
		var hp =			buffer_read(buffer,buffer_u8);
		gun =			buffer_read(buffer,buffer_u16);
		gun_index =		buffer_read(buffer,buffer_u8);
		tim =			buffer_read(buffer,buffer_u16);
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
				clientObject.tox = xx;
				clientObject.toy = yy;
				clientObject.prevx = clientObject.x;
				clientObject.prevy = clientObject.y;
				clientObject.look_angle = look_angle;
				clientObject.torso_angle = torso_angle;
				clientObject.leg_angle = leg_angle;
				clientObject.image_index = i_index;
				clientObject.hp = hp;
				clientObject.gun = gun;
				clientObject.gun_index = gun_index;
				
				if (team = -10){with(clientObject){instance_destroy();}}
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
		var idd = 		buffer_read(buffer,buffer_u16);
		var type = 		buffer_read(buffer,buffer_u16);
		var sprite = 		buffer_read(buffer,buffer_u16);
		var team = 		buffer_read(buffer,buffer_u8);
		if (team = obj_player.playerTeam) 
			{
			bul = instance_create_depth(xx,yy,0,obj_friendly_bullet);
			if (sprite = spr_bullet_blue) {sprite = spr_bullet_green}
			else if (sprite = spr_laser) {bul.image_speed = 0;bul.image_index = 2}
			}
			else
			{
			bul = instance_create_depth(xx,yy,0,obj_enemy_bullet);
			if (sprite = spr_bullet_blue) {sprite = spr_bullet_red}
			else if (sprite = spr_laser) {bul.image_speed = 0;bul.image_index = 1}
			}
		bul.spd = spd;
		bul.type = type;
		bul.dir = aa;
		bul.identifier = idd;
		bul.teamid = team;
		bul.sprite_index = sprite;
		break;

	case 3:
		var status1 = buffer_read(buffer, buffer_s16);
		var state = buffer_read(buffer, buffer_u8);

		//obj_capture_point.captured = captured;
		obj_capture_point.cp_status = status1;
		//obj_capture_point.cp_status_2 = status2;
		matchState = state;
		if (matchState = 1 && !obj_door.open) 
			{
			with(obj_door)
				{
				multi = 0;
				open = true
				}
			}
			else if (obj_door.open && matchState = 0) 			
			{
			with(obj_door)
				{
				multi = 0;
				open = false
				}
			}
		if (matchState = 2)
			{
				if (!instance_exists(obj_endResult)){
				t = instance_create_depth(obj_player.x,obj_player.y,0,obj_endResult);
				if (obj_player.playerTeam = 2) {t.text = "Victory";t.index = 0}
				else if (obj_player.playerTeam = 1) {t.text = "Defeat";t.index = 1}
				}
			}
		else if (matchState = 3)
			{
				if (!instance_exists(obj_endResult)){
				t = instance_create_depth(obj_player.x,obj_player.y,0,obj_endResult);
				if (obj_player.playerTeam = 1) {t.text = "Victory";t.index = 0}
				else if (obj_player.playerTeam = 2) {t.text = "Defeat";t.index = 1}
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
		var collidedInstance = buffer_read(buffer, buffer_bool);
		var travel = buffer_read(buffer, buffer_s16);
		if (status != -1)
			{
				with(obj_bullet){if (identifier = other.status)
					{x = startx+lengthdir_x(self.spd,dir)*travel;y = starty+lengthdir_y(self.spd,dir)*travel;
								if (collidedInstance == true &&!audio_is_playing(sound_explosion))
					{audio_play_sound(sound_explosion,1,0);audio_sound_gain(sound_explosion,0.05,0);audio_sound_pitch(sound_explosion,5);}
						instance_destroy();}}
				with(obj_enemy_bullet){if (identifier = other.status)
					{x = startx+lengthdir_x(self.spd,dir)*travel;y = starty+lengthdir_y(self.spd,dir)*travel;instance_destroy();}}
				with(obj_friendly_bullet){if (identifier = other.status)
					{x = startx+lengthdir_x(self.spd,dir)*travel;y = starty+lengthdir_y(self.spd,dir)*travel;instance_destroy();}}
			}

			break;
	case 6:
		var object = buffer_read(buffer, buffer_s16);
		var xx = buffer_read(buffer, buffer_s16);
		var yy = buffer_read(buffer, buffer_s16);
		if (object_exists(object)){instance_create_depth(xx,yy,0,object)}
		break;
	case 7:
		var instance_identifier = buffer_read(buffer, buffer_s16);
		with(obj_health_point){if (identifier = instance_identifier){can_tick = false;alarm[0]=1;respawn = 0;}}
		with(obj_health_point_small){if (identifier = instance_identifier){can_tick = false;alarm[0]=1;respawn = 0;}}
		break;
	case 8:
		var xx = buffer_read(buffer, buffer_u16);
		var yy = buffer_read(buffer, buffer_u16);
		identifier = buffer_read(buffer, buffer_u16);
			if (identifier != -1)
			{
				with(obj_bullet){if (identifier = other.identifier)
					{x = xx+lengthdir_x(self.spd,dir);y = yy+lengthdir_y(self.spd,dir);}}
				with(obj_enemy_bullet){if (identifier = other.identifier)
					{x = xx+lengthdir_x(self.spd,dir);y = yy+lengthdir_y(self.spd,dir);}}
				with(obj_friendly_bullet){if (identifier = other.identifier)
					{x = xx+lengthdir_x(self.spd,dir);y = yy+lengthdir_y(self.spd,dir);}}
			}
	}
if (buffer_tell(buffer) == buffer_get_size(buffer)) {break;}
}