depth = -9999;
class_portrait = spr_class_portrait;
image_index = 0;
image_speed = 0;
mouse_on = false;
scale = 0.5;
alpha = 0.8;
xx = 300;
yy = 150;

image_xscale= scale;
image_yscale= scale;

for(i=0;i<1;i++)
{
ability = instance_create_depth(x,y,0,obj_ability_dash);
ability.xx = xx-28-i*20;
ability.yy = yy;
}