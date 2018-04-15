
part_emitter_clear(Sname,emitter1);
part_type_clear(particle1);
if (insideView(x,y))
{
a = instance_create_depth(x,y,-100,obj_magic_explosion_small);
a.color = c_green;
}
