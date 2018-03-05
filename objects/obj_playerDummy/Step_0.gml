/// @description Insert description here
// You can write your code in this editor
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