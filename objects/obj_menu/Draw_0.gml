
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(menu_font);
draw_set_color(c_white);
draw_self();

for(i=0;i<=maxButtons;i++)
	{
	if (button[i,1] = 1) 
		{
			col = make_color_rgb(114,226,random_range(211,244));
			draw_set_color(c_white);
			draw_text(room_width/2+1,room_height-160+24*i,button[i,0]);
			draw_text(room_width/2-1,room_height-160+24*i,button[i,0]);
			draw_text(room_width/2,1+room_height-160+24*i,button[i,0]);
			draw_text(room_width/2,-1+room_height-160+24*i,button[i,0]);

		}
		else
		{
			col = make_color_rgb(100,200,random_range(220,210));
		}

	draw_set_color(col);
	draw_text(room_width/2,room_height-160+24*i,button[i,0]);
	}
draw_set_halign(fa_right);
draw_set_color(c_white);
//draw_text(room_width-4,room_height-44,string(GM_version));