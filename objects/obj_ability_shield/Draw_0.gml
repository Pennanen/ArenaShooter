


draw_sprite_ext(sprite_index,image_index,x,y,scale,scale,0,c_white,alpha);
if (onMasterCooldown || shield_index > 0)
	{
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_font(font0);
	draw_set_color(c_white);
	draw_text(x,y-1,string(masterCooldown));
	draw_sprite_ext(spr_shield,shield_index,obj_player.x,obj_player.y,0.9,0.9,obj_player.look_angle,c_white,0.7);
	draw_sprite_ext(spr_shield,shield_index,obj_player.x,obj_player.y,0.9,0.9,obj_player.look_angle+90,c_white,0.7);
	draw_sprite_ext(spr_shield,shield_index,obj_player.x,obj_player.y,0.9,0.9,obj_player.look_angle+180,c_white,0.7);
	draw_sprite_ext(spr_shield,shield_index,obj_player.x,obj_player.y,0.9,0.9,obj_player.look_angle+270,c_white,0.7);
	}
	