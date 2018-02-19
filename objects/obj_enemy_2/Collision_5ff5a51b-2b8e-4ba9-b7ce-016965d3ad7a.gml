/// @description Insert description here
// You can write your code in this editor
scr_shake(4,4,4);
	other.hp -=1;
	instance_create_depth(x,y,-100,obj_explosion);
	with(other)
		{
		var len = 55;
		var dir = point_direction(other.x,other.y,x,y);
		physics_apply_impulse(x,y,lengthdir_x(len,dir),lengthdir_y(len,dir))	
		}
	instance_destroy();