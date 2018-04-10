/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_endresult,index,x,y+8,3,3,0,c_white,1);
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_font(font0)

draw_set_color(c_black);
draw_text(x-1,y,text);
draw_text(x+1,y,text);
draw_text(x,y+1,text);
draw_text(x,y-1,text);

draw_set_color(c_white);
draw_text(x,y,text);