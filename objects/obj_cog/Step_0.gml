/// @description Insert description here
// You can write your code in this editor
image_angle += spd*3;
var vx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
var vy = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
var dis = point_distance(startx,starty,vx,vy)
var dir = point_direction(startx,starty,vx,vy)
x = startx+0.1*lengthdir_x(dis,dir);
y = starty+0.1*lengthdir_y(dis,dir);