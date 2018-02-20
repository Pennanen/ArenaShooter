/// @description Insert description here
// You can write your code in this editor
if (instance_exists(target)){
x = target.x+lengthdir_x(10,image_angle-56);
y = target.y-3+lengthdir_y(10,image_angle-56);
rpm = random_range(1.5,3);
image_angle = target.look_angle


if (can_shoot && target.fire)
	{
	var tipx = x+lengthdir_x(10,image_angle);
	var tipy = y+lengthdir_y(10,image_angle);
	can_shoot = false;
	b = instance_create_depth(tipx,tipy,depth,obj_enemy_bullet);
	with(b)
		{
		spd = 122;
		dir = other.image_angle;
		physics_apply_impulse(x,y,lengthdir_x(spd,dir),lengthdir_y(spd,dir));
		}
	alarm[0] = room_speed/rpm;
	sprite_index = spr_gun_enemy_shoot;
	image_index = 0;
	}
}
else
{
instance_destroy();	
}