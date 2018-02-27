/// @description Insert description here
// You can write your code in this editor
draw_shadow_sprite(leg_sprite,4,4,1,leg_angle);
draw_shadow_sprite(head_sprite,4,4,1,look_angle);
draw_shadow_sprite(torso_sprite,4,4,1,torso_angle);


draw_sprite_ext(leg_sprite,image_index,x,y,image_xscale,image_yscale,leg_angle,c_white,1);

//draw gun
xx = x+lengthdir_x(10,look_angle-56);
yy = y-5+lengthdir_y(10,look_angle-56);
draw_sprite_ext(gun.sprite_index,gun_index,xx,yy,1,1,look_angle,c_red,1);


var dir = torso_angle;
var len = abs(speed)/4;
draw_sprite_ext(torso_sprite,image_index,x+lengthdir_x(len,dir),y-4+lengthdir_y(len,dir),image_xscale,1.4*image_yscale,torso_angle,c_white,1);


var dir = look_angle;
var len = abs(speed)/2;
draw_sprite_ext(head_sprite,image_index,x+lengthdir_x(len,dir),y-8+lengthdir_y(len,dir),0.8*image_xscale,0.8*image_yscale,look_angle,c_white,1);

draw_sprite_ext(spr_enemy_hp,1,x+lengthdir_x(len,dir),y-22+lengthdir_y(len,dir),hp/maxhp,0.8,0,c_white,1);
draw_sprite_ext(spr_enemy_hp,0,x+lengthdir_x(len,dir),y-22+lengthdir_y(len,dir),hp/maxhp,0.8,0,c_white,1);