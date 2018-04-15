/// @description Insert description here
// You can write your code in this editor
dmg = type;
scale = 0.005*type+0.4;
image_xscale = scale+0.02*type;
image_yscale = scale-0.009*type;
x+=lengthdir_x(spd,dir);
y+=lengthdir_y(spd,dir);
if (startspd = -1){startspd = spd};
if (spd > startspd-(startspd/3)){spd -=0.1;}
image_angle = dir;
/*
if (spd > 3.5){spd -=0.1;}
var hold = 45/spd;
dir+=random_range(hold,-hold);
part_type_scale(particle1,0.1+0.1*dmg,0.1+0.1*dmg);
*/