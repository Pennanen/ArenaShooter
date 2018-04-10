


draw_sprite_ext(sprite_index,image_index,x,y,scale,scale,0,c_white,alpha);
if (onMasterCooldown)
	{
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_font(font0);
	draw_set_color(c_white);
	draw_text(x,y-1,string(masterCooldown));
	draw_sprite_ext(spr_shield,0,obj_player.x,obj_player.y,1,1,obj_player.look_angle,c_white,0.7);
	}
	