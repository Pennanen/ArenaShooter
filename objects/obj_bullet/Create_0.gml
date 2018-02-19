
//audio

audio_play_sound_on(global.mainEmitter,laser_rifle,0,1);

destroy = 1;
phy_bullet = true;
particle1 = part_type_create();
scr_shake(4,4,3);
part_type_sprite(particle1,sprite_index,0,0,0);

part_type_size(particle1,0.18,0.78,-0.16,0);
part_type_scale(particle1,1,1);
part_type_color3(particle1,c_aqua,c_blue,c_white);
part_type_alpha3(particle1,1.00,0.67,0.04);
part_type_speed(particle1,0.1,1,-0.05,1);
part_type_direction(particle1,1,326,0,7);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,54,339,-0.60,5,0);
part_type_blend(particle1,1);
part_type_life(particle1,33,63);

phy_fixed_rotation = true;

emitter1 = part_emitter_create(Sname);

depth = -100;
image_xscale = 0.01;
image_yscale = 0.01;
image_alpha = 0;
spd = 200;
dir = obj_gun.image_angle;
physics_apply_impulse(x,y,lengthdir_x(spd,dir),lengthdir_y(spd,dir));

l = instance_create_depth(x,y,-100,obj_light);
l.target = self;
l.scale = 0.3;
with(l)
	{
	var col = c_aqua;
	light_set_color(col);
	}