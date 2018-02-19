
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(font01);
draw_set_color(c_white);
for(i=0;i<=maxButtons;i++)
	{
	draw_sprite_ext(spr_button_play,button[i,1],x,y+32*i,1.2,1.2,0,c_white,1);		
	draw_text(x,y+32*i,button[i,0]);	
	}