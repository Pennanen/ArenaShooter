if (player_on && can_tick && obj_player.hp < obj_player.maxhp)
	{
	scr_heal(15);
	hp_send_tick(identifier);
	alarm[0] = 1;
	respawn = 0;
	can_tick = false;
	}
image_angle -= 0.5;
image_xscale = scale;
image_yscale = scale;