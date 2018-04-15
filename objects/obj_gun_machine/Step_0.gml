/// @description Insert description here
// You can write your code in this editor
x = obj_player.x+lengthdir_x(8,image_angle-45);
y = obj_player.y+lengthdir_y(8,image_angle-45);
if (distance_to_point(mouse_x,mouse_y)>16){
image_angle = point_direction(x,y,mouse_x,mouse_y);}
else {image_angle = obj_player.look_angle};
depth = obj_player.depth+1;

if (can_shoot && mouse_check_button(mb_left) && ammo >= 1 && !reloading)
	{
	var tipx = x+lengthdir_x(10,image_angle);
	var tipy = y+lengthdir_y(10,image_angle);
	can_shoot = false;
	
	b1 = instance_create_depth(tipx,tipy,depth,obj_bullet);
	obj_player.phy_speed_x +=lengthdir_x(0.5,obj_player.gun.image_angle-180);
	obj_player.phy_speed_y +=lengthdir_y(0.5,obj_player.gun.image_angle-180);
	image_angle += irandom_range(-2,2);
	audio_play_sound(laser_blaster,1,0);
	audio_sound_pitch(laser_blaster,1.5);
	audio_sound_gain(laser_blaster,0.25,0);
	with(b1)
	{
	identifier = irandom_range(0,32000);
	dmg = other.wpnDmg;
	type = dmg;
	spd = other.gunpower;
	dir = other.image_angle;
	client_send_bullet(x,y,dir,spd,identifier,dmg);
	}
	
	ammo-=1;
	
	alarm[0] = room_speed/rps;
	sprite_index = spr_gun_1_shoot;
	image_index = 0;
	image_speed = 2.5;
	}
	else if (ammo < 1 && !reloading) 
	{
	reloading = true;
	reload = 0;
	}
	else if (reloading)
	{
	if (reload = reloadTime)
		{
		reloading = false;ammo = magazine;
		}
		else
		{
		reload++;	
		}
	};
