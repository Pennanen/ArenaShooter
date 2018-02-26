/// @description Insert description here
// You can write your code in this editor
if (!pressed && collision_rectangle(x-5,y,x+5,y+28,obj_player,0,0)&& keyboard_check_pressed(ord("E")))
{
pressed = true;
drawSelection = false;
image_speed = 1;
selectionIndex = 0;
if (!called)
{
	with(obj_door)
		{
		if (identifier = other.identifier) {call+=1;}
		multi = 0;
		}
		called = true;
}
else if (called)
{
	with(obj_door)
		{
		if (identifier = other.identifier) {call-=1;}
		multi = 0;
		}
		called = false;
}
}
else if (!pressed && collision_rectangle(x-5,y,x+5,y+28,obj_player,0,0))
{
	drawSelection = true;
	selectionIndex+=0.2;
	
}
else
{
selectionIndex = 0;
drawSelection = false;	
}

if (called && image_index > 3) {image_index = 3;image_speed = 0;pressed = false;}