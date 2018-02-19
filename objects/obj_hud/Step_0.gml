/// @description Insert description here
// You can write your code in this editor
if (window_get_fullscreen()){
w = display_get_width();
h = display_get_height();
scale = w/camera_get_view_width(view_camera[0]);}
else
{
w = window_get_width();
h = window_get_height();
scale = w/camera_get_view_width(view_camera[0]);
}
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