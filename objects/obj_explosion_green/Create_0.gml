destroy = 0;
particle2 = part_type_create();

part_type_sprite(particle2,spr_bullet,0,0,0);
part_type_size(particle2,0.40,1,-0.1,0);
part_type_scale(particle2,0.8,0.8);
part_type_color3(particle2,c_lime,c_green,c_white);
part_type_alpha3(particle2,0.66,0.54,0.05);
part_type_speed(particle2,0.2,4,0,0);
part_type_direction(particle2,1,326,-0.10,0);
part_type_gravity(particle2,0,270);
part_type_orientation(particle2,54,339,-0.60,2,1);
part_type_blend(particle2,1);
part_type_life(particle2,32,66);
emitter2 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter2,x,x,y,y,ps_shape_diamond,1);
part_emitter_burst(Sname,emitter2,particle2,2);

part_emitter_burst(Sname,emitter2,particle2,2)


depth = -100;
image_xscale = 0.01;
image_yscale = 0.01;
image_alpha = 0;

l = instance_create_depth(x,y,-100,obj_light);
l.target = self;
l.scale = 1.5;
with(l)
	{
	var col = c_aqua;
	light_set_color(col);
	}
l.destroy = true;
alarm[0] = 5;