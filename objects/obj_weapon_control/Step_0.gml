if (instance_exists(obj_player)){
if (place_meeting(x,y,obj_player)){
if (selected = 1)
	{
	with(obj_player.gun)
		{
		instance_destroy();
		}
	g = instance_create_depth(obj_player.x,obj_player.y,0,wpn[1])
	obj_player.gun = g;
	obj_player.weight = 0.5;
	selected = 0;
	}
else if (selected = 2)
	{
	with(obj_player.gun)
		{
		instance_destroy();
		}
	g = instance_create_depth(obj_player.x,obj_player.y,0,wpn[2])
	obj_player.gun = g;
	obj_player.weight = 1.5;
	selected = 0;
	}
else if (selected = 3)
	{
	with(obj_player.gun)
		{
		instance_destroy();
		}
	g = instance_create_depth(obj_player.x,obj_player.y,0,wpn[3])
	obj_player.gun = g;
	obj_player.weight = 1;
	selected = 0;
	}
else if (selected = 4)
	{
	with(obj_player.gun)
		{
		instance_destroy();
		}
	g = instance_create_depth(obj_player.x,obj_player.y,0,wpn[4])
	obj_player.gun = g;
	obj_player.weight = 0;
	selected = 0;
	}
}
}