/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)){
image_angle = point_direction(obj_player.gun.x,obj_player.gun.y,mouse_x,mouse_y);
}else image_angle = 135;