/// @description Insert description here
// You can write your code in this editor
draw_set_valign(fa_center);
draw_set_halign(fa_left);
draw_set_font(font0);

draw_text(5,10,"Server: "+string(serverName));
draw_text(5,30,"-------------------------------------------");
draw_text(5,50,"Match State: " + string(state[matchState]));
draw_text(5,90,"Capture Progress: " + string(cp_capture));
draw_text(5,110,"Capture Score: " + string(cp_status));
draw_text(5,150,"Client Count: " + string(client_id_counter));