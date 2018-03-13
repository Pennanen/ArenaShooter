
var ww = window_get_width();

draw_sprite_ext(spr_player_hp,1,ww/2,24,8,4,0,c_white,1);
draw_sprite_ext(spr_player_hp,1,ww/2,24,-8,4,0,c_white,1);
if (cp_status < 0 && obj_player.playerTeam = 1) {col = c_fuchsia}
else if (cp_status > 0 && obj_player.playerTeam = 1) {col = c_lime}
if (cp_status < 0 && obj_player.playerTeam = 2) {col = c_lime}
else if (cp_status > 0 && obj_player.playerTeam = 2) {col = c_fuchsia}
draw_sprite_ext(spr_player_hp,0,ww/2,24,-8*(cp_status/100),4,0,col,1);