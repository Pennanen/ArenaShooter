
if (selected){button[current,1] = 2;}
else
{
for(i=0;i<=maxButtons;i++)
	{
	if (i = current){button[i,1] = 1;}
	else {button[i,1] = 0};
	}

if (keyd)
	{
	if (current < maxButtons){current++}
	else {current = 0};
	}
if (keyu)
	{
	if (current > 0){current--}
	else {current = maxButtons};
	}
if (keySelect) 
	{
	switch(current)
		{
		case 0:
			room_goto(rm_lobby);
			alarm[1] = 1;
			break;
		case 1:
			global.multiplayer = true;
			room_goto(rm_lobby);
			alarm[0] = 1;
			break;
		case 2:
			global.multiplayer = true;
			room_goto(rm_hosting);
			instance_destroy();
			break;
		case 3:
			game_end();
		}
	}
}