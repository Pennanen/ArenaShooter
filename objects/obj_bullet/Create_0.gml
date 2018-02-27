
//audio
spd = 0;
dir = 0;
dmg = 10;

particle1 = part_type_create();
scr_shake(2,2,5);
part_type_sprite(particle1,sprite_index,0,0,0);


part_type_size(particle1,0.3,0.4,-0.045,0);
part_type_scale(particle1,1,1);
part_type_color3(particle1,c_aqua,c_blue,c_dkgray);
part_type_alpha3(particle1,1.00,0.67,0.04);
part_type_speed(particle1,0,0,0,1);
part_type_direction(particle1,1,326,0,0.5);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,360,-0.10,0.5,0);
part_type_blend(particle1,0)
part_type_life(particle1,12,55);

emitter1 = part_emitter_create(Sname);

depth = -100;
image_xscale = 0.01;
image_yscale = 0.01;
image_alpha = 0;

l = instance_create_depth(x,y,-100,obj_light);
l.target = self;
l.scale = 0.3;
with(l)
	{
	var col = c_aqua;
	light_set_color(col);
	}