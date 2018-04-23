
max_spd = base_spd-(0.1*weight);

if (hp < 1) {dead = true;}

audio_listener_position(x,y,0);
audio_emitter_position(global.mainEmitter,x,y,0);
gunClip = gun.magazine;
gunAmmo = gun.ammo;

if (!fall && !dash)
{
	if (keyr && Vx <= max_spd-Ax){Vx+=Ax} else if (Vx >=max_spd+dampening*2) {Vx -= dampening*2};
	if (keyl && Vx >= -max_spd+Ax){Vx-=Ax}else if (Vx <=-max_spd-dampening*2) {Vx += dampening*2};
	if (keyd && Vy <= max_spd-Ax){Vy+=Ay}else if (Vy >=max_spd+dampening*2) {Vy -= dampening*2};
	if (keyu && Vy >= -max_spd+Ax){Vy-=Ay}else if (Vy <=-max_spd-dampening*2) {Vy += dampening*2};

	if	(!keyl && Vx <= -dampening){Vx+=dampening}else if (!keyl && !keyr) {Vx=0}
	if	(!keyr && Vx >= dampening){Vx-=dampening}else if (!keyl && !keyr) {Vx=0}
	if	(!keyu && Vy <= -dampening){Vy+=dampening}else if (!keyd && !keyu) {Vy=0}
	if	(!keyd && Vy >= dampening){Vy-=dampening}else if (!keyd && !keyu) {Vy=0}
}
with(gun) 
{
	image_xscale = other.scale;
	image_yscale = other.scale;
}
hpImaginary = hp;

scr_teamPassage();