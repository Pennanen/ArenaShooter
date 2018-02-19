/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_player_hp,1,w/2,h-21,(obj_player.hp/obj_player.maxhp)*15,5,0,c_white,1);
draw_sprite_ext(spr_player_hp,0,w/2,h-21,(obj_player.hp/obj_player.maxhp)*15,5,0,c_white,1);
draw_sprite_ext(spr_hud,0,0,0,scale,scale,0,c_white,1);
draw_sprite_ext(spr_hud,0,w,0,-scale,scale,0,c_white,1);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(font0);
var xx = window_get_width()/2;
var yy = 32;
if (s < 10 && m < 10)
{
draw_text(xx,yy,"0"+string(m)+":"+"0"+string(s));
}
else if (s < 10)
{
draw_text(xx,yy,string(m)+":"+"0"+string(s));
}
else if (m < 10)
{
draw_text(xx,yy,"0"+string(m)+":"+string(s));
}
else
{
draw_text(xx,yy,string(m)+":"+string(s));
}
draw_set_halign(fa_left);
draw_set_valign(fa_left);
draw_set_font(font01);

draw_text(22, 16, "FPS = " + string(fps));
   