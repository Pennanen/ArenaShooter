/// @description Insert description here
// You can write your code in this editor
x = obj_player.x+lengthdir_x(10,image_angle-56);
y = obj_player.y-3+lengthdir_y(10,image_angle-56);
if (distance_to_point(mouse_x,mouse_y)>16){
image_angle = point_direction(x,y,mouse_x,mouse_y);}
else {image_angle = obj_player.look_angle};
depth = obj_player.depth+1;

if (can_shoot && mouse_check_button(mb_left))
	{
	var tipx = x+lengthdir_x(10,image_angle);
	var tipy = y+lengthdir_y(10,image_angle);
	can_shoot = false;
	instance_create_depth(tipx,tipy,depth,obj_bullet);
	alarm[0] = room_speed/rpm;
	sprite_index = spr_gun_1_shoot;
	image_index = 0;
	}
