/// @description Insert description here
// You can write your code in this editor

l = instance_create_depth(x,y,-100,obj_light);
l.target = self;
l.scale = 2;
with(l)
	{
	var col = c_white;
	light_set_color(col);
	}
	
l = instance_create_depth(x,y,-100,obj_light_spot);
l.target = self;
l.scale = 1;
with(l)
	{
	var col = c_white;
	light_set_color(col);
	}
