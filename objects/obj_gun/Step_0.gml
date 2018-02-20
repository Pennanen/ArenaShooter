/// @description Insert description here
// You can write your code in this editor
x = obj_player.x+lengthdir_x(10,image_angle-56);
y = obj_player.y-3+lengthdir_y(10,image_angle-56);
if (distance_to_point(mouse_x,mouse_y)>16){
image_angle = point_direction(x,y,mouse_x,mouse_y);}
else {image_angle = obj_player.look_angle};
depth = obj_player.depth+1;

if (can_shoot && mouse_check_button(mb_left) && ammo >= 1)
	{
	var tipx = x+lengthdir_x(10,image_angle);
	var tipy = y+lengthdir_y(10,image_angle);
	can_shoot = false;
	
	b1 = instance_create_depth(tipx,tipy,depth,obj_bullet);

	image_angle += irandom_range(-5,5);
	with(b1)
	{
	spd = 122;
	dir = other.image_angle;
	physics_apply_impulse(x,y,lengthdir_x(spd,dir),lengthdir_y(spd,dir));
	}
	ammo-=1;
	
	alarm[0] = room_speed/rps;
	sprite_index = spr_gun_1_shoot;
	image_index = 0;
	}
	else if (ammo < magazine && can_shoot && !mouse_check_button(mb_left)) 
	{
	if (reload = reloadTime)
		{
		ammo++
		reload = 0;
		}
		else
		{
		reload++;	
		}
	};
