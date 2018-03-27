
if (hp < 1) {dead = true;}

audio_listener_position(x,y,0);
audio_emitter_position(global.mainEmitter,x,y,0);
gunClip = gun.magazine;
gunAmmo = gun.ammo;

if (!fall && !dash){
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
}
with(gun) 
{
	image_xscale = other.scale;
	image_yscale = other.scale;
}

if (hp < hpImaginary && !balanceHp){balanceHp = true;hpMulti = 0;}
else if (balanceHp) 
	{
		if (hp < hpImaginary){hpImaginary-=hpMulti;hpMulti+=0.05}
		else{hpImaginary = hp;balanceHp = false}
	}
	else {hpImaginary = hp;balanceHp = false;hpMulti = 0;}

