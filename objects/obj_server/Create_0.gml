
port = 6510;
maxClients = 8;
cp_status = 0;
server = server_create(port,maxClients);
scale = 0.2;
if (window_get_fullscreen())
	{
	window_set_fullscreen(false);
	window_set_size(scale*960,scale*540);
	}
