var xx = argument0;
var yy = argument1;

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);

if (xx < vx-32 || yy < vy-32 || xx > vx+vw+32 || yy > vy+vh+32)
	{
	return false;	
	}
else
	{
	return true;	
	}