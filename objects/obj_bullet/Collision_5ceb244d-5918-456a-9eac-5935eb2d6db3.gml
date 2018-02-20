/// @description Insert description here
// You can write your code in this editor
phy_speed_x = 0;
phy_speed_y = 0;

with(other)
	{
	hp -=other.dmg;
	wiggleTime = 15;
	phy_speed_x /= 2;
	phy_speed_y /= 2;
	}
	
instance_destroy();