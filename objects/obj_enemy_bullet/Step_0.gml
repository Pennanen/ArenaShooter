/// @description Insert description here
// You can write your code in this editor
dmg = type;
scale = 0.005*type+0.4;
image_xscale = scale+0.02*type;
image_yscale = scale-0.009*type;


x+=lengthdir_x(spd,dir);
y+=lengthdir_y(spd,dir);
travel += 1;

if (place_meeting(x,y,obj_teamPassage))
	{
	col = collision_point(x,y,obj_teamPassage,0,0);
	if (instance_exists(col))
		{
		if (col.team != teamid) 
			{
			client_send_bullet_hit(identifier,false,travel);
			instance_destroy();
			destroy = true;
			}	
		}
	}
image_angle = dir;