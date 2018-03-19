
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_font(menu_font);
draw_set_color(c_white);
draw_self();

for(i=0;i<=maxButtons;i++)
	{
					draw_set_color(c_black);
			draw_text(x+1,y+36*i,button[i,0]);
			draw_text(x-1,y+36*i,button[i,0]);
			draw_text(x,y-1+36*i,button[i,0]);
			draw_text(x,y+1+36*i,button[i,0]);
			draw_text(x+2,y+3+36*i,button[i,0]);
			draw_text(x+3,y+3+36*i,button[i,0]);
			draw_text(x+1,y+1+36*i,button[i,0]);
			draw_text(x+2,y+2+36*i,button[i,0]);	
	if (button[i,1] = 1) 
		{
			col = make_color_rgb(114,226,random_range(211,244));
			draw_set_color(c_white);
			draw_text(x+1,y+36*i,button[i,0]);
			draw_text(x-1,y+36*i,button[i,0]);
			draw_text(x,y-1+36*i,button[i,0]);
			draw_text(x,y+1+36*i,button[i,0]);

		}
		else
		{
			col = make_color_rgb(100,200,random_range(220,210));
		}

	draw_set_color(col);
	draw_text(x,y+36*i,button[i,0]);	
	}
draw_set_halign(fa_right);
draw_set_color(c_white);
//draw_text(room_width-4,room_height-44,string(GM_version));