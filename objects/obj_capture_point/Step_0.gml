if (player_on && !enemy_on && can_tick)
	{
	//send capture_point tick
	cp_send_tick();
	alarm[0] = tick_rate;
	can_tick = false;
	}
if (player_on && !enemy_on) {image_blend = c_aqua}
else if (enemy_on && !player_on) {image_blend = c_red}
else if (enemy_on && player_on) {image_blend = c_purple}
else {image_blend = c_white};