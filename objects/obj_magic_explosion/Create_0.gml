randomize();
image_angle = irandom(360);
destroy = 0;
color = c_aqua;
depth = -800;
image_xscale = 0.5;
image_yscale = 0.5;
image_alpha = 0;
image_speed =1.3;
p = 4;
	
//alarm[0] = 5;

l = instance_create_depth(x,y,-100,obj_light);
l.target = self;
l.scale = 1.5;
with(l)
	{
	var col = c_aqua;
	light_set_color(col);
	}