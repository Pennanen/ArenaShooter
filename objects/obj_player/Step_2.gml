
depth = -1*(y/10);

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