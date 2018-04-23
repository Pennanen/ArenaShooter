/// @description Insert description here
// You can write your code in this editor
/*
if (call == singalNumber)
	{
	open = true;
	}
	else if (open = true) {open = false;multi = 3;}
*/
if (up){
if (open)
	{
	if (y > (startPosy - sprite_height)){y -= multi;multi+=0.5}
	else {y = (startPosy - sprite_height)}
	}
	else
	{
	if (image_alpha > 0){image_alpha -= 0.2;}	
	if (y < startPosy){y += multi;multi+=0.5;}
	else {y = startPosy}
	}
}
if (down){
if (open)
	{
	if (y < (startPosy + sprite_height)){y += multi;multi+=0.5}
	else {y = (startPosy + sprite_height)}
	}
	else
	{
	if (image_alpha > 0){image_alpha -= 0.2;}	
	if (y > startPosy){y -= multi;multi+=0.5;}
	else {y = startPosy}
	}
}
if (right){
if (open)
	{
	if (image_alpha < 1){image_alpha += 0.2;}
	if (x < (startPosx + sprite_width)){x += multi;multi+=0.1}
	else {x = (startPosx + sprite_width)}
	}
	else
	{
	if (image_alpha > 0){image_alpha -= 0.2;}	
	if (x > startPosx){x -= multi;multi+=0.1;}
	else {x = startPosx}
	}
}
if (left){
if (open)
	{
	if (image_alpha < 1){image_alpha += 0.2;}
	if (x > (startPosx - sprite_width)){x -= multi;multi+=0.1}
	else {x = (startPosx - sprite_width)}
	}
	else
	{
	if (image_alpha > 0){image_alpha -= 0.2;}	
	if (x < startPosx){x += multi;multi+=0.1;}
	else {x = startPosx}
	}
}
