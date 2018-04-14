
colliderInstance = collision_line(x,y,x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir),obj_practice_doll,true,false);
if (colliderInstance != noone && destroy = false)
	{
	if (colliderInstance.dead = false){
	with(colliderInstance)
		{
		hp-=other.dmg;
		wiggleTime = 15;
		}
		instance_destroy();
		destroy = true;}
	}
	