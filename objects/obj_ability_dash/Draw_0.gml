


draw_sprite_ext(sprite_index,image_index,x,y,scale,scale,0,c_white,alpha);
if (onMasterCooldown)
	{
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_font(font0);
	draw_set_color(c_white);
	draw_text(x,y-1,string(masterCooldown));
	}
	else
	{
	draw_sprite_ext(spr_icons,icon,x,y,1,1,0,c_white,1);	
	}