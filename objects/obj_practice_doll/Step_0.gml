/// @description Insert description here
// You can write your code in this editor

if (hp < hpImaginary && !balanceHp){balanceHp = true;hpMulti = 0;}
else if (balanceHp) 
	{
		if (hp < hpImaginary){hpImaginary-=hpMulti;hpMulti+=0.05}
		else{hpImaginary = hp;balanceHp = false}
	}
	else {hpImaginary = hp;balanceHp = false;hpMulti = 0;}
if (wiggleTime > 0){
scaleWiggle = scr_wiggle(1,-wiggleTime/20,wiggleTime);
wiggleTime -= 1;
}
else
{
scaleWiggle = 0;	
}
if (hp <= 0 && !dead) {alarm[0] = 180;instance_create_depth(x,y,-100,obj_magic_explosion);client_send_object(x,y,obj_magic_explosion);alarm[1] = 4;dead = true}
image_xscale = scale+scaleWiggle;
image_yscale = scale-scaleWiggle;