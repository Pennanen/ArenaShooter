/// @description Insert description here
// You can write your code in this editor
var dir = point_direction(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y);
diff = angle_difference(dir,leg_angle);
leg_angle+=clamp(.7*diff,-8,8);
torso_angle =  (look_angle+leg_angle)/2;
look_angle = point_direction(x,y,obj_player.x,obj_player.y);

image_xscale = scale+scaleWiggle;
image_yscale = scale-scaleWiggle;
if (wiggleTime > 0){
scaleWiggle = scr_wiggle(1,-wiggleTime/20,wiggleTime);
wiggleTime -= 0.5;
}
else
{
scaleWiggle = 0;	
}