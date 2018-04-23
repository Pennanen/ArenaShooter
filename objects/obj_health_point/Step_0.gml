if (player_on && can_tick && obj_player.hp < obj_player.maxhp)
	{
	scr_heal(50);
	hp_send_tick(identifier);
	respawn = 0;
	alarm[0] = 1;
	can_tick = false;
	}

image_angle += 0.5;
image_xscale = scale;
image_yscale = scale;