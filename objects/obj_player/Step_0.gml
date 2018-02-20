
if (hp < 1) {room_restart();}

audio_listener_position(x,y,0);
audio_emitter_position(global.mainEmitter,x,y,0);
gunClip = gun.magazine;
gunAmmo = gun.ammo;

if (!dash && !fall){
if (keyl) physics_apply_impulse(x,y,-force,0);
if (keyr) physics_apply_impulse(x,y,force,0);
if (keyu) physics_apply_impulse(x,y,0,-force);
if (keyd) physics_apply_impulse(x,y,0,force);


if (phy_speed_x > max_spd) {phy_speed_x = max_spd};
if (phy_speed_x < -max_spd) {phy_speed_x = -max_spd};

if (phy_speed_y > max_spd) {phy_speed_y = max_spd};
if (phy_speed_y < -max_spd) {phy_speed_y = -max_spd};

if	(!keyl && !keyr)
	{
	if (phy_speed_x >= dampening) {phy_speed_x-=dampening}	
	else if (phy_speed_x <= -dampening) {phy_speed_x+=dampening}		
	else {phy_speed_x=0}	
	}
	
if	(!keyu && !keyd)
	{
	if (phy_speed_y >= dampening) {phy_speed_y-=dampening}	
	else if (phy_speed_y <= -dampening) {phy_speed_y+=dampening}		
	else {phy_speed_y=0}	
	}

if (keydash) {dash = true;alarm[0] = 4;};
}
else if (dash && !dashCooldown)
	{
	var len = 100;
	
	var W = keyu;
	var A = keyl*2; // shift by 1 bit
	var S = keyd*4; // shift by 2 bits
	var D = keyr*8; // shift by 3 bits
	var bits = W|A|S|D;

switch(bits)
{
case 1:{dashDir = 90;break;}// W
case 2:{dashDir = 180;break;}// A
case 3:{dashDir = 135;break;}// WA
case 4:{dashDir = 270;break;}// S
//case 5:{var dir = 270;break;}// WS
case 6:{dashDir = 225;break;}// SA
//case 7:{var dir = 270;break;}// WSA
case 8:{dashDir = 0;break;}// D
case 9:{dashDir = 45;break;}// DW
//case 10:{var dir = 225;break;}// AD
//case 11:{var dir = 225;break;}// WDA
case 12:{dashDir = 315;break;}// SD
case 0:
{
dashDir = 0;
var len = 0;
break;
}
}
var xf = lengthdir_x(len,dashDir);
var yf = lengthdir_y(len,dashDir);
physics_apply_impulse(x,y,xf,yf);
}

with(gun) 
{
	image_xscale = other.scale;
	image_yscale = other.scale;
}


