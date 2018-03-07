
depth = -1*(y/10);
if (place_meeting(x,y,obj_hole) && !dash)
	{
	col = collision_point(x,y,obj_hole,0,0);
	if (instance_exists(col))
		{
		if (phy_position_x > col.x && phy_position_x < col.x+col.sprite_width
		&& phy_position_y > col.y && phy_position_y < col.y+col.sprite_height && !dash)
			{
			fall = true;
			}	
		}
	}

if (fall && scale > 0.2) {scale -= 0.01;phy_speed_x = 0;phy_speed_y = 0;}
else if (fall) 
	{
	alarm[1] = room_speed*deathTimer;
	hp = maxhp;
	fall = false;
	scale = 1;
	}
image_xscale = scale+scaleWiggle;
image_yscale = scale-scaleWiggle;
if (wiggleTime > 0){
scaleWiggle = scr_wiggle(1,-wiggleTime/20,wiggleTime);
wiggleTime -= 1;
}
else
{
scaleWiggle = 0;	
}