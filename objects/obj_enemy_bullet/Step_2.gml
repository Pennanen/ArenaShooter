//wall
colliderInstance = collision_line(x,y,x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir),obj_wall_parent,true,false);
if (colliderInstance != noone && destroy = false)
	{
	client_send_bullet_hit(identifier);
	instance_destroy();
	destroy = true;
	}
//door
colliderInstance = collision_line(x,y,x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir),obj_door,true,false);
if (colliderInstance != noone && destroy = false)
	{
	client_send_bullet_hit(identifier);
	instance_destroy();
	destroy = true;
	}
	
//enemies
colliderInstance = collision_line(x,y,x+lengthdir_x(spd,dir),y+lengthdir_y(spd,dir),obj_player,true,false);
if (colliderInstance != noone && destroy = false)
	{
	with(colliderInstance)
		{
		hp-=other.dmg;
		wiggleTime = 12;
		}
		client_send_bullet_hit(identifier);
		instance_destroy();
		destroy = true;
	}
	