if (player_on && !enemy_on && can_tick)
	{
	//send capture_point tick
	cp_send_tick();
	alarm[0] = 1;
	can_tick = false;
	}
if ((player_on && !enemy_on) || (friend_on && !enemy_on) || friend_on && player_on && !enemy_on) {image_blend = c_lime}
else if (enemy_on && !player_on && !friend_on) {image_blend = c_red}
else if (enemy_on && player_on || friend_on && enemy_on || friend_on && enemy_on && player_on) {image_blend = c_purple}
else {image_blend = c_black};