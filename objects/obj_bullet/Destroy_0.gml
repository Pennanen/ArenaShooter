if (insideView(x,y))
{
a = instance_create_depth(x-lengthdir_x(spd/2,dir),y-lengthdir_y(spd/2,dir),-100,obj_magic_explosion_small);
a.color = c_white;
}