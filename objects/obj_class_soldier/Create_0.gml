depth = -9999;
class_portrait = spr_class_portrait;
image_index = 0;
image_speed = 0;
mouse_on = false;
scale = 0.65;
alpha = 0.8;
maxAbilities = 4;
xx = (-10*maxAbilities)+10;
yy = 152;

image_xscale= scale;
image_yscale= scale;
for(i=0;i<maxAbilities;i++)
{
if (i = 0){ability = instance_create_depth(x,y,0,obj_ability_dash);}
if (i = 1){ability = instance_create_depth(x,y,0,obj_ability_shield);}
if (i = 2){ability = instance_create_depth(x,y,0,obj_ability_blank);}
if (i = 3){ability = instance_create_depth(x,y,0,obj_ability_blank2);}
ability.xx = xx+i*20;
ability.yy = yy+16;
}