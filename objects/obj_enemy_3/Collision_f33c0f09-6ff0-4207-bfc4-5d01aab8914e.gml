/// @description Insert description here
// You can write your code in this editor
scr_shake(16,16,4);
	with(other)
		{
		wiggleTime = 10;
		var len = 55;
		var dir = point_direction(other.x,other.y,x,y);
		physics_apply_impulse(x,y,lengthdir_x(len,dir),lengthdir_y(len,dir))	
		}

if (canDmg){
	other.hp -=1;
	canDmg = false;
	alarm[0] = 30;
			var len = 255;
		var dir = point_direction(other.x,other.y,x,y)+180;
		physics_apply_impulse(x,y,lengthdir_x(len,dir),lengthdir_y(len,dir))
}