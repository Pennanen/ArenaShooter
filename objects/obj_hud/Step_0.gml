/// @description Insert description here
// You can write your code in this editor

guiX = obj_player.x;
guiY = obj_player.y;

steps++;
if (steps >= room_speed)
	{
	steps = 0;
	s++;
	totalSeconds++;
	}

if (s >= 60)
	{
	s = 0;
	m++;
	}