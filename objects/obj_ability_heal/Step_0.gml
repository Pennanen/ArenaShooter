if (onCooldown || onMasterCooldown){sprite_index = spr_ability_cooldown;alpha = 0.55;}
else if (mouse_on) {sprite_index = portrait_sprite;if (image_index < 3){image_index++};alpha = 0.75;}
else {sprite_index = portrait_sprite;if (image_index >= 1){image_index--};alpha = 0.65;};
xpos = obj_camera.targetx-265+26;
ypos = obj_camera.targety+150;
x = xpos;
y = ypos;


if (keyboard_check_pressed(key) && !onCooldown && !onMasterCooldown)
	{
	alarm[1] = cooldownLength*60;
	alarm[2] = masterCooldownLength*60;
	onCooldown = true;
	onMasterCooldown = true;
	obj_player.dash = true;
	}
else if (onCooldown)
{
	
}