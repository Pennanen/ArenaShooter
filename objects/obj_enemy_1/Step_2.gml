
image_speed = abs(phy_speed)/2;
depth = -1*(y/10);

var dir = point_direction(x,y,mpPlanner.x,mpPlanner.y);
if (hp < 1) {instance_destroy();instance_create_depth(x,y,depth,obj_explosion)}
physics_apply_impulse(x,y,lengthdir_x(force,dir),lengthdir_y(force,dir));
if (phy_speed_x > spd) {phy_speed_x = spd}
if (phy_speed_x < -spd) {phy_speed_x = -spd}
if (phy_speed_y > spd) {phy_speed_y = spd}
if (phy_speed_y < -spd) {phy_speed_y = -spd}

switch(state)
{
case "seek_player":
	{
	if (point_distance(x,y,obj_player.x,obj_player.y) < 190 
	&& !collision_line(x,y,obj_player.x,obj_player.y,obj_wall,0,0)) {state = "keep_distance";}
	target = obj_player;
	scr_seek();
	break;
	}
case "keep_distance":
	{
	scr_keep_distance(200);
	if (point_distance(x,y,obj_player.x,obj_player.y) > 250 
	|| collision_line(x,y,obj_player.x,obj_player.y,obj_wall,0,0)) {state = "seek_player";};
	break;
	}
}
