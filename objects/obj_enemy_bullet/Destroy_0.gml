
if (insideView(x,y))
{
a = instance_create_depth(x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir),-100,obj_magic_explosion_small);
a.color = c_red;
}
