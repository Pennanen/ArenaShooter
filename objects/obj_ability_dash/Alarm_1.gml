/// @description Cooldown
with(obj_player){
if (Vx > max_spd) {Vx -= 1};
if (Vx < -max_spd) {Vx += 1};

if (Vy > max_spd) {Vy -= 1};
if (Vy < -max_spd) {Vy += 1};
if (Vx > max_spd || Vx < -max_spd || Vy > max_spd || Vy < -max_spd)
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
