/// @description Insert description here
// You can write your code in this editor

if (phy_speed_x > max_spd) {phy_speed_x -= 0.5};
if (phy_speed_x < -max_spd) {phy_speed_x += 0.5};

if (phy_speed_y > max_spd) {phy_speed_y -= 0.5};
if (phy_speed_y < -max_spd) {phy_speed_y += 0.5};

if (phy_speed_x > max_spd || phy_speed_x < -max_spd || phy_speed_y > max_spd || phy_speed_y < -max_spd)
{
alarm[0] = 1;	
dashCooldown = true;
}
else
{
	dashCooldown = false;
dash = false;
}
