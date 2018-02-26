
///collision

//wall
colliderInstance = collision_line(x,y,x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir),obj_wall_parent,true,false);
if (colliderInstance != noone)
	{	
	spd = 0;
	instance_destroy();
	}
	
//door
colliderInstance = collision_line(x,y,x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir),obj_door,true,false);
if (colliderInstance != noone)
	{	
	spd = 0;
	instance_destroy();
	}
	
//player
colliderInstance = collision_line(x,y,x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir),obj_player,true,false);
if (colliderInstance != noone)
	{
	scr_shake(8,8,5);
	spd = 0;
	with(colliderInstance)
		{
		hp-=other.dmg;
		wiggleTime = 12;
		}
	instance_destroy();
	}