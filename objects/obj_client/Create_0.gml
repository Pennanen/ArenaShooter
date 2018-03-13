randomize();
ip = get_string("ip:", "127.0.0.1");
port = 6510;
connect = client_connect(ip,port);
update = 0;

matchState = 0;
