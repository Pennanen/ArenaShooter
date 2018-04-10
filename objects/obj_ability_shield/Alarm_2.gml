/// @description MasterCooldown
if (masterCooldown > 1)
	{
	masterCooldown--;
	alarm[2] = room_speed;
	}
else
	{
	onMasterCooldown = false;
	}