/// @description Cooldown
with(obj_player){
if (phy_speed_x > max_spd) {phy_speed_x -= 1};
if (phy_speed_x < -max_spd) {phy_speed_x += 1};

if (phy_speed_y > max_spd) {phy_speed_y -= 1};
if (phy_speed_y < -max_spd) {phy_speed_y += 1};
if (phy_speed_x > max_spd || phy_speed_x < -max_spd || phy_speed_y > max_spd || phy_speed_y < -max_spd)
{
dash = true;
other.onCooldown = true;
other.onMasterCooldown = true;
}
else
{
dash = false;
other.onCooldown = false;
other.onMasterCooldown = true;
}
}

if (onCooldown){alarm[1] = 1;}
