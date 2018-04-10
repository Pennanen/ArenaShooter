/// @description Insert description here
// You can write your code in this editor
if (insideView(x,y))
{
part_emitter_region(Sname,emitter1,x,x,y,y,ps_shape_ellipse, ps_distr_gaussian);
part_emitter_stream(Sname,emitter1,particle1,8);
}
else
{
	part_emitter_clear(Sname,emitter1);
	
}
x+=lengthdir_x(spd,dir);
y+=lengthdir_y(spd,dir);
if (spd > 4.5){spd -=0.15;}

if (place_meeting(x,y,obj_teamPassage))
	{
	col = collision_point(x,y,obj_teamPassage,0,0);
	if (instance_exists(col))
		{
		if (col.team != teamid) 
			{
			client_send_bullet_hit(identifier);
			instance_destroy();
			destroy = true;
			}	
		}
	}