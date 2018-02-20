
if (planStep > 6){
with(mpPlanner_air)
	{
	if (instance_exists(follower)){
	x = follower.x;
	y = follower.y;
	plan_fly(other.targetx,other.targety,other.spd);	
	}
	}
	if (instance_exists(target))
		{
			targetx = target.x;
			targety = target.y;
		}
	planStep = 0
}
else
{
planStep++;	
}