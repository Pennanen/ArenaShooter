if (onCooldown || onMasterCooldown){sprite_index = spr_ability_cooldown;alpha = 0.55;}
else if (mouse_on) {sprite_index = portrait_sprite;if (image_index < 3){image_index++};alpha = 0.75;}
else {sprite_index = portrait_sprite;if (image_index >= 1){image_index--};alpha = 0.65;};
xpos = obj_camera.targetx+xx;
ypos = obj_camera.targety+yy;

x = xpos;
y = ypos;