/// @description Insert description here
// You can write your code in this editor
if (x != tox){x = lerp(x,tox,0.5)}else{x = tox;}
if (y != toy){y = lerp(y,toy,0.5)}else{y = toy;}
if (x != xprevious || y != yprevious)
	{
	leg_sprite = spr_p_leg_run;
	torso_sprite = spr_p_torso_run;
	head_sprite = spr_p_head_run;
	}
	else
	{
	leg_sprite = spr_p_leg_idle;
	torso_sprite = spr_p_torso_idle;
	head_sprite = spr_p_head_idle;	
	}
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

image_xscale = scale+scaleWiggle;
image_yscale = scale-scaleWiggle;