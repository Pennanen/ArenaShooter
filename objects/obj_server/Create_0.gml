
port = 6510;
maxClients = 8;

serverName = "Default"

cp_status = 0;
cp_tick_rate = 30;
cp_canTick = true;
cp_capture = 0;
cp_canCaptureTick = true;
cp_capture_rate = 6;
cp_captured = 0;

alarm[2] = 120;
matchState = 0;

server = server_create(port,maxClients);
scale = 0.5;

	window_set_fullscreen(false);
	window_set_size(scale*960,scale*540);

/*
Matchstates:
	0 lobby
	1 running
	2 L win
	3 R win
	4 reset
*/
state[0] = "Lobby"
state[1] = "Running"
state[2] = "Left Win"
state[3] = "Right Win"
state[4] = "Reset"
