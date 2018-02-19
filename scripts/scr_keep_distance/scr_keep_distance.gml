var len = argument0;

if (planStep > 5){
with(mpPlanner)
	{
	if (instance_exists(follower)){
	x = follower.x;
	y = follower.y;
	plan(other.targetx,other.targety,other.spd);	
	}
	}
	if (instance_exists(target))
		{
		var dir = point_direction(obj_player.x,obj_player.y,x,y);
		targetx = target.x+lengthdir_x(len,dir);
		targety = target.y+lengthdir_y(len,dir);
		}
	planStep = 0
}
else
{
planStep++;	
}