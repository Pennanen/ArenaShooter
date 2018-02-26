/// @description Insert description here
// You can write your code in this editor
{
if (call == singalNumber)
	{
	open = true;
	}
	else if (open = true) {open = false;multi = 3;}
}
if (up){
if (open)
	{
	if (phy_position_y > (startPosy - sprite_height)){phy_position_y -= multi;multi+=0.5}
	else {phy_position_y = (startPosy - sprite_height)}
	}
	else
	{
	if (image_alpha > 0){image_alpha -= 0.2;}	
	if (phy_position_y < startPosy){phy_position_y += multi;multi+=0.5;}
	else {phy_position_y = startPosy}
	}
}
if (down){
if (open)
	{
	if (phy_position_y < (startPosy + sprite_height)){phy_position_y += multi;multi+=0.5}
	else {phy_position_y = (startPosy + sprite_height)}
	}
	else
	{
	if (image_alpha > 0){image_alpha -= 0.2;}	
	if (phy_position_y > startPosy){phy_position_y -= multi;multi+=0.5;}
	else {phy_position_y = startPosy}
	}
}
if (right){
if (open)
	{
	if (image_alpha < 1){image_alpha += 0.2;}
	if (phy_position_x < (startPosx + sprite_width)){phy_position_x += multi;multi+=0.1}
	else {phy_position_x = (startPosx + sprite_width)}
	}
	else
	{
	if (image_alpha > 0){image_alpha -= 0.2;}	
	if (phy_position_x > startPosx){phy_position_x -= multi;multi+=0.1;}
	else {phy_position_x = startPosx}
	}
}
if (left){
if (open)
	{
	if (image_alpha < 1){image_alpha += 0.2;}
	if (phy_position_x > (startPosx - sprite_width)){phy_position_x -= multi;multi+=0.1}
	else {phy_position_x = (startPosx - sprite_width)}
	}
	else
	{
	if (image_alpha > 0){image_alpha -= 0.2;}	
	if (phy_position_x < startPosx){phy_position_x += multi;multi+=0.1;}
	else {phy_position_x = startPosx}
	}
}
