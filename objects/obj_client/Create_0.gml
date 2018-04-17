randomize();
ip = get_string("ip:", "127.0.0.1");
port = 6510;
connect = client_connect(ip,port);
update = 0;
send = 0;
sendRate = 2;
matchState = 0;


/*
Matchstates:
	0 lobby
	1 running
	2 L win
	3 R win
	4 reset
*/