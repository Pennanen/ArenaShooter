/// @description Insert description here
// You can write your code in this editor
draw_shadow_sprite(leg_sprite,4,4,1,leg_angle);
draw_shadow_sprite(head_sprite,4,4,1,look_angle);
draw_shadow_sprite(torso_sprite,4,4,1,torso_angle);

draw_sprite_ext(leg_sprite,image_index,x,y,image_xscale,image_yscale,leg_angle,c_white,1);


var dir = -phy_rotation;
var len = abs(phy_speed)/4;
draw_sprite_ext(torso_sprite,image_index,x+lengthdir_x(len,dir),y-3+lengthdir_y(len,dir),image_xscale,image_yscale,torso_angle,c_white,1);


var dir = -phy_rotation;
var len = abs(phy_speed)/2;
draw_sprite_ext(head_sprite,image_index,x+lengthdir_x(len,dir),y-6+lengthdir_y(len,dir),image_xscale,image_yscale,look_angle,c_white,1);
draw_sprite_ext(spr_enemy_hp,1,x+lengthdir_x(len,dir),y-22+lengthdir_y(len,dir),hp/maxhp,1,0,c_white,1);
draw_sprite_ext(spr_enemy_hp,0,x+lengthdir_x(len,dir),y-22+lengthdir_y(len,dir),hp/maxhp,1,0,c_white,1);
