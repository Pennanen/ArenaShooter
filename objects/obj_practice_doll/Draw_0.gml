/// @description Insert description here
// You can write your code in this editor
if (!dead){
draw_shadow_sprite(sprite_index,4,4,1,image_angle);
draw_self();
draw_sprite_ext(spr_enemy_hp,1,x,y-18,hp/maxhp,0.8,0,c_white,1);
draw_sprite_ext(spr_enemy_hp,2,x,y-18,hpImaginary/maxhp,0.8,0,c_white,1);
draw_sprite_ext(spr_enemy_hp,0,x,y-18,hp/maxhp,0.8,0,c_white,1);
}
