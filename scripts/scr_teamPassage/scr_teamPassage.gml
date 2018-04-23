
if (place_meeting(x,y,obj_teamPassage))
	{
	col = collision_point(x,y,obj_teamPassage,0,0);
	if (instance_exists(col))
		{
		if (col.team != playerTeam) 
			{
			if (col.team = 1) {Vx = 2}
			else if (col.team = 2) {Vx = -2};
			}	
		}
	}
