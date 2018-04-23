/// @description Insert description here
// You can write your code in this editor
x = obj_player.x+lengthdir_x(8,image_angle-45);
y = obj_player.y+lengthdir_y(8,image_angle-45);
if (distance_to_point(mouse_x,mouse_y)>16){
image_angle = point_direction(x,y,mouse_x,mouse_y);}
else {image_angle = obj_player.look_angle};
depth = obj_player.depth+1;
if (ammo = 1) {wpnDmg = 25} else {wpnDmg = 5}
if (can_shoot && mouse_check_button(mb_left) && ammo >= 1 && !reloading)
	{
	var tipx = x+lengthdir_x(10,image_angle);
	var tipy = y+lengthdir_y(10,image_angle);
	can_shoot = false;
	
	b1 = instance_create_depth(tipx,tipy,depth,obj_bullet);
	obj_player.Vx +=lengthdir_x(0.5,obj_player.gun.image_angle-180);
	obj_player.Vy +=lengthdir_y(0.5,obj_player.gun.image_angle-180);
	audio_play_sound(laser_rifle,1,0);
	if (wpnDmg = 10){audio_sound_pitch(laser_rifle,random_range(1.4,1.6));}else{audio_sound_pitch(laser_rifle,1.2);}
	audio_sound_gain(laser_rifle,0.2,0);
	with(b1)
	{
	identifier = irandom_range(0,32000);
	dmg = other.wpnDmg;
	type = dmg;
	spd = other.gunpower;
	dir = other.image_angle;
	image_angle = dir;
	image_speed = 0;
	if (other.ammo > 1){sprite_index = spr_laser;}
	client_send_bullet(x,y,dir,spd,identifier,dmg);
	}
	
	ammo-=1;
	
	alarm[0] = room_speed/rps;
	sprite_index = spr_gun_4_shoot;
	image_index = 0;
	image_speed = 1;
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
		reloading = false;
		ammo = magazine;
		}
		else
		{
		reload++;	
		}
	};
