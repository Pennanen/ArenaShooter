
var ww = window_get_width();
draw_sprite_ext(spr_player_hp,4,ww/2,24+1,8,4,0,c_white,1);
draw_sprite_ext(spr_player_hp,4,ww/2,24-1,8,4,0,c_white,1);
draw_sprite_ext(spr_player_hp,4,ww/2+1,24,8,4,0,c_white,1);

draw_sprite_ext(spr_player_hp,4,ww/2,24+1,-8,4,0,c_white,1);
draw_sprite_ext(spr_player_hp,4,ww/2,24-1,-8,4,0,c_white,1);
draw_sprite_ext(spr_player_hp,4,ww/2-1,24,-8,4,0,c_white,1);

draw_sprite_ext(spr_player_hp,1,ww/2,24,8,4,0,c_white,1);
draw_sprite_ext(spr_player_hp,1,ww/2,24,-8,4,0,c_white,1);
if (cp_status < 0 && obj_player.playerTeam = 1) {draw_sprite_ext(spr_player_hp,3,ww/2,24,-8*(cp_status/100),4,0,c_white,1);}
else if (cp_status > 0 && obj_player.playerTeam = 1) {draw_sprite_ext(spr_player_hp,0,ww/2,24,-8*(cp_status/100),4,0,c_white,1);}
if (cp_status < 0 && obj_player.playerTeam = 2) {draw_sprite_ext(spr_player_hp,0,ww/2,24,-8*(cp_status/100),4,0,c_white,1);}
else if (cp_status > 0 && obj_player.playerTeam = 2) {draw_sprite_ext(spr_player_hp,3,ww/2,24,-8*(cp_status/100),4,0,c_white,1);}
