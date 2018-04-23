if (player_on && !enemy_on && can_tick)
	{
	//send capture_point tick
	cp_send_tick();
	alarm[0] = 1;
	can_tick = false;
	}

if (captured = 0) {image_blend = c_black}
else if (obj_player.playerTeam = captured) {image_blend = c_lime}
else if (obj_player.playerTeam != captured) {image_blend = c_red}
