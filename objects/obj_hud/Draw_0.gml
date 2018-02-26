/// @description Insert description here
// You can write your code in this editor
var angle = obj_player.look_angle-180;

var hpcol = make_color_rgb(133,255,99);
if (obj_player.gun.reloading){var ammocol = make_color_rgb(255,255,122);}
else{var ammocol = make_color_rgb(121,255,241);}
draw_set_alpha(0.5);
scr_draw_ring(guiX,guiY,32,2,obj_player.maxhp,obj_player.hp,angle+30,-75,-1,c_black);
scr_draw_ring(guiX,guiY,32,2,obj_player.gunClip,obj_player.gunAmmo,angle-30,-75,1,c_black);
scr_draw_ring(guiX,guiY,34,2,obj_player.maxhp,obj_player.hp,angle+30,-75,-1,hpcol);
scr_draw_ring(guiX,guiY,34,2,obj_player.gunClip,obj_player.gunAmmo,angle-30,-75,1,ammocol);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(font0);




/*
var xx = guiX+guiW/2;
var yy = guiY+32;
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
draw_set_font(font0);

draw_text(guiX+22, guiY+16, "FPS = " + string(fps));
  */