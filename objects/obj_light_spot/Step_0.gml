/// @description Insert description here
// You can write your code in this editor
x = obj_player.x;
y = obj_player.y;
var angle = obj_player.look_angle+45;
light_set_rotation(angle);
scale += random_range(-0.04,0.04);
if (scale > 2.2) {scale = 2.1};
if (scale < 2) {scale = 2.1};

light_set_scale(scale);