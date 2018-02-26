
/// @description  Draw the text box and caption

draw_self();
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(font01);

draw_text(x, y + 13, string(text));
draw_set_color(c_white);
draw_text(x, y - 16, ("Player Name"));
draw_set_color(c_black);
draw_text(x+1, y - 15, ("Player Name"));




