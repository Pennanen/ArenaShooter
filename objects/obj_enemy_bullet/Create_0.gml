idd = 0;
dmg = 1;
spd = 1;
type = 0;
startspd = -1;
identifier = 0;
destroy = false;
teamid = 0;
scale = 1;
travel = 1;
alarm[0] = 2;
startx = x;
starty = y;

depth = -100;
image_xscale = 0.1;
image_yscale = 0.1;
image_alpha = 1;
l = 0;
dT = 0;
li = instance_create_depth(x,y,-100,obj_light);
li.target = self;
li.scale = 0.3;
with(l)
	{
	var col = c_red;
	light_set_color(col);
	}