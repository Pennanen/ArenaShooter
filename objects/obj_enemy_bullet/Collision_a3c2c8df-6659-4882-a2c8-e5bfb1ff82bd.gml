/// @description Insert description here
// You can write your code in this editor
phy_speed_x = 0;
phy_speed_y = 0;
scr_shake(4,4,4);
	other.hp -=1;
	with(other)
		{
		wiggleTime = 10;
		var len = 5;
		var dir = point_direction(other.x,other.y,x,y);
		physics_apply_impulse(x,y,lengthdir_x(len,dir),lengthdir_y(len,dir))	
			
		}
	instance_destroy();