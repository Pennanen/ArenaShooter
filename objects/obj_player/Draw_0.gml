/// @description Insert description here
// You can write your code in this editor
if (!dead && hp > 0){
draw_shadow_sprite(leg_sprite,4,4,1,leg_angle);
draw_shadow_sprite(head_sprite,4,4,1,look_angle);
draw_shadow_sprite(torso_sprite,4,4,1,torso_angle);


draw_sprite_ext(leg_sprite,image_index,x,y,image_xscale/1.5,image_yscale/1.5,leg_angle,c,1);

//draw gun
with(gun) {

	draw_shadow_sprite(sprite_index,4,4,1,image_angle);
	draw_self();}

var dir = leg_angle;
var len = velocity/8;
draw_sprite_ext(torso_sprite,image_index,x+lengthdir_x(len,dir),y+lengthdir_y(len,dir),image_xscale*0.8,1*image_yscale,torso_angle,c,1);

draw_sprite_ext(head_sprite,image_index,x+lengthdir_x(len/2,dir),y+lengthdir_y(len/2,dir),0.7*image_xscale,0.7*image_yscale,look_angle,c,1);

}
