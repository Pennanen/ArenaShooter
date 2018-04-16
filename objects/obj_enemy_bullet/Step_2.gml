//wall
colliderInstance = collision_line(x,y,x+lengthdir_x(spd/3,dir),y+lengthdir_y(spd/3,dir),obj_wall_parent,true,false);
if (colliderInstance != noone && destroy = false)
	{
	client_send_bullet_hit(identifier,false);
	instance_destroy();
	destroy = true;
	}
//door
colliderInstance = collision_line(x,y,x+lengthdir_x(spd/3,dir),y+lengthdir_y(spd/3,dir),obj_door,true,false);
if (colliderInstance != noone && destroy = false)
	{
	client_send_bullet_hit(identifier,false);
	instance_destroy();
	destroy = true;
	}
	
//enemies
colliderInstance = collision_line(x,y,x+lengthdir_x(spd/3,dir),y+lengthdir_y(spd/3,dir),obj_player,true,false);
if (colliderInstance != noone && destroy = false)
	{
	with(colliderInstance)
		{
		hp-=other.dmg;
		wiggleTime = 12;
		}
		client_send_bullet_hit(identifier,true);
		instance_destroy();
		destroy = true;
	}
colliderInstance = collision_line(x,y,x+lengthdir_x(spd/3,dir),y+lengthdir_y(spd/3,dir),obj_practice_doll,true,false);
if (colliderInstance != noone && destroy = false)
	{
	if (colliderInstance.dead = false){
	with(colliderInstance)
		{
			
		hp-=other.dmg;
		wiggleTime = 9;
		}
		client_send_bullet_hit(identifier,false);
		instance_destroy();
		destroy = true;}
	}
	