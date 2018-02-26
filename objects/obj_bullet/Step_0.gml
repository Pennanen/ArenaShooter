/// @description Insert description here
// You can write your code in this editor
if (insideView(x,y))
{

part_emitter_region(Sname,emitter1,x,x,y,y,ps_shape_ellipse, ps_distr_gaussian);
part_emitter_burst(Sname,emitter1,particle1,4);
}
else
{
	part_emitter_clear(Sname,emitter1);
	
}
x+=lengthdir_x(spd,dir);
y+=lengthdir_y(spd,dir);
if (spd > 3.5){spd -=0.1;}
var hold = 45/spd;
dir+=random_range(hold,-hold);
part_type_scale(particle1,0.1+0.1*dmg,0.1+0.1*dmg);