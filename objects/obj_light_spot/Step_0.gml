/// @description Insert description here
// You can write your code in this editor
x = target.x;
y = target.y;
var angle = target.look_angle+45;
light_set_rotation(angle);
scale += random_range(-0.04,0.04);
if (scale > 2.2) {scale = 2.1};
if (scale < 2) {scale = 2.1};
alpha += random_range(-0.04,0.04);
if (alpha > 1) {alpha = 0.9};
if (alpha < 0.8) {alpha = 0.9};
light_set_alpha(alpha)
light_set_scale(scale);