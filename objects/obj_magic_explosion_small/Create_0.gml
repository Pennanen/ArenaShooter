randomize();
image_angle = irandom(360);
destroy = 0;
color = c_aqua;
depth = -800;
image_xscale = 0.2;
image_yscale = 0.2;
image_alpha = 0;
image_speed = 4;

image_angle = irandom(360);
x += irandom_range(-4,4);
y += irandom_range(-4,4);
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