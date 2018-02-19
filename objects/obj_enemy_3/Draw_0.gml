/// @description Insert description here
// You can write your code in this editor
draw_shadow_sprite(leg_sprite,4,4,1,leg_angle);


draw_sprite_ext(leg_sprite,image_index,x,y,image_xscale,image_yscale,leg_angle,c_white,1);

draw_sprite_ext(spr_enemy_hp,1,x,y-22,hp/maxhp,1,0,c_white,1);
draw_sprite_ext(spr_enemy_hp,0,x,y-22,hp/maxhp,1,0,c_white,1);
