if (onCooldown || onMasterCooldown){sprite_index = spr_ability_cooldown;alpha = 0.55;}
else if (mouse_on) {sprite_index = portrait_sprite;if (image_index < 3){image_index++};alpha = 0.75;}
else {sprite_index = portrait_sprite;if (image_index >= 1){image_index--};alpha = 0.65;};
xpos = obj_camera.targetx-265+52;
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
	var len = 5;
	
	var W = obj_player.keyu;
	var A = obj_player.keyl*2; // shift by 1 bit
	var S = obj_player.keyd*4; // shift by 2 bits
	var D = obj_player.keyr*8; // shift by 3 bits
	var bits = W|A|S|D;
var dashDir = irandom(360);
switch(bits)
{
case 1:{var dashDir = 90;break;}// W
case 2:{var dashDir = 180;break;}// A
case 3:{var dashDir = 135;break;}// WA
case 4:{var dashDir = 270;break;}// S
//case 5:{var dir = 270;break;}// WS
case 6:{var dashDir = 225;break;}// SA
//case 7:{var dir = 270;break;}// WSA
case 8:{var dashDir = 0;break;}// D
case 9:{var dashDir = 45;break;}// DW
//case 10:{var dir = 225;break;}// AD
//case 11:{var dir = 225;break;}// WDA
case 12:{var dashDir = 315;break;}// SD
case 0:
{
var dashDir = 0;
var len = 0;
break;
}
}
var xf = lengthdir_x(len,dashDir);
var yf = lengthdir_y(len,dashDir);
with(obj_player){
physics_apply_impulse(x,y,xf,yf);}
}