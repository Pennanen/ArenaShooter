
port = 6510;
maxClients = 8;


cp_status = 0;
cp_tick_rate = 10;
cp_canTick = true;
cp_captured = 0;
cp_capture_progress = 0;


alarm[2] = 120;
matchState = 0;

server = server_create(port,maxClients);
scale = 0.2;
if (window_get_fullscreen())
	{
	window_set_fullscreen(false);
	window_set_size(scale*960,scale*540);
	}

/*
Matchstates:
	0 lobby
	1 running
	2 L win
	3 R win
	4 reset
*/