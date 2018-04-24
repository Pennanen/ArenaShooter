/// @description Insert description here
// You can write your code in this editor
ammoX = (-(100/obj_player.gunClip)/2*obj_player.gunClip)+(100/obj_player.gunClip)/2;

hpAnchorX = obj_camera.targetx+hpX;
hpAnchorY = obj_camera.targety+hpY;

ammoAnchorX = obj_camera.targetx+ammoX;
ammoAnchorY = obj_camera.targety+ammoY;

guiX = obj_player.x;
guiY = obj_player.y-6;
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