/// @description Insert description here
// You can write your code in this editor
if (instance_exists(target)){
x = target.x+lengthdir_x(10,image_angle-56);
y = target.y-3+lengthdir_y(10,image_angle-56);
image_angle = target.look_angle


if (can_shoot && target.fire)
	{
		//audio
		audio_emitter_position(blastEmi,x,y,0);
		audio_play_sound_on(blastEmi,laser_blaster,0,1);
	var tipx = x+lengthdir_x(10,image_angle);
	var tipy = y+lengthdir_y(10,image_angle);
	can_shoot = false;
	b1 = instance_create_depth(tipx,tipy,depth,obj_enemy_bullet);
	b2 = instance_create_depth(tipx,tipy,depth,obj_enemy_bullet);
	b3 = instance_create_depth(tipx,tipy,depth,obj_enemy_bullet);
	with(b1)
		{
		spd = other.gunpower;
		dir = other.image_angle+7;
		}
	with(b2)
		{
		spd = other.gunpower;
		dir = other.image_angle;
		}
	with(b3)
		{
		spd = other.gunpower;
		dir = other.image_angle-7;
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