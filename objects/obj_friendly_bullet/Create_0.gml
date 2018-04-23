idd = 0;
dmg = 5;
spd = 1;
scale = 1;
type = 0;
identifier = 0;
destroy = false;
teamid = 0;
startspd = -1;

startx = x;
starty = y;


depth = -100;
image_xscale = 0.1;
image_yscale = 0.1;
image_alpha = 1;


l = instance_create_depth(x,y,-100,obj_light);
l.target = self;
l.scale = 0.3;
with(l)
	{
	var col = c_lime;
	light_set_color(col);
	}