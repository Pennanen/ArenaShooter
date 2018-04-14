
//audio
spd = 0;
dir = 0;
dmg = 10;
scale = 1;
type = 0;
destroy = false;
randomize();
scr_shake(1.5,1.5,7);

image_index = 1;
depth = -100;
image_xscale = scale;
image_yscale = scale;
image_alpha = 1;

l = instance_create_depth(x,y,-100,obj_light);
l.target = self;
l.scale = 0.3;
with(l)
	{
	var col = c_aqua;
	light_set_color(col);
	}