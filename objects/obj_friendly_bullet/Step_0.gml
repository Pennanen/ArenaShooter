/// @description Insert description here
// You can write your code in this editor
dmg = type;
scale = 0.005*type+0.4;
image_xscale = scale;
image_yscale = scale;
x+=lengthdir_x(spd,dir);
y+=lengthdir_y(spd,dir);
if (spd > 4.5){spd -=0.15;}
image_angle = dir;