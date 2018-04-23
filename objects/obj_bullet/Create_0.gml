
//audio
startspd = -1;
spd = 0;
dir = 0;
dmg = 10;
scale = 1;
type = 0;
destroy = false;

startx = x;
starty = y;

randomize();
scr_shake(2,2,4);

image_index = 0;
depth = -100;
image_xscale = scale+0.02*type;
image_yscale = scale-0.009*type;
image_alpha = 1;

l = instance_create_depth(x,y,-100,obj_light);
l.target = self;
l.scale = 0.2;
with(l)
	{
	var col = c_aqua;
	light_set_color(col);
	}