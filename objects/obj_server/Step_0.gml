if (matchState = 1)
	{
		if (cp_captured = 1 && cp_canTick){cp_status+= 1;cp_canTick = false;alarm[0] = cp_tick_rate};
		if (cp_captured = 2 && cp_canTick){cp_status-= 1;cp_canTick = false;alarm[0] = cp_tick_rate};
	}
