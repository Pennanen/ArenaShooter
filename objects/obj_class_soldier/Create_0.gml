depth = -9999;
class_portrait = spr_class_portrait;
image_index = 0;
image_speed = 0;
mouse_on = false;
scale = 0.5;
alpha = 0.8;
maxAbilities = 2;
xx = (-17*maxAbilities)+17;
yy = 145;

image_xscale= scale;
image_yscale= scale;
for(i=0;i<maxAbilities;i++)
{
if (i = 0){ability = instance_create_depth(x,y,0,obj_ability_dash);}
if (i = 1){ability = instance_create_depth(x,y,0,obj_ability_shield);}
ability.xx = xx+i*34;
ability.yy = yy+18;
}