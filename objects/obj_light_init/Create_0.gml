/// @description Insert description here
// You can write your code in this editor
col = make_color_rgb(55,22,22);
light_init(room_width*2,room_height*2,1000,col,0.5,45);
instance_create_depth(x,y,-100,obj_light);
instance_create_depth(x,y,-100,obj_light_spot);

with(obj_wall)
{
light_create_caster(0);	
}