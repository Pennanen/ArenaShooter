
var vpos_x = camera_get_view_x(view_camera[0]);
var vpos_y = camera_get_view_y(view_camera[0]);
var vpos_w = camera_get_view_width(view_camera[0]) * 0.5;
var vpos_h = camera_get_view_height(view_camera[0]) * 0.5;
var dir = point_direction(target.x,target.y,mouse_x,mouse_y);
var len = point_distance(target.x,target.y,mouse_x,mouse_y)/4;

targetx += (((target.x+lengthdir_x(len,dir))-vpos_w) -vpos_x)*0.5;
targety += (((target.y+lengthdir_y(len,dir))-vpos_h) -vpos_y)*0.5;

targetx = targetx+shakex;
targety = targety+shakey;

camera_set_view_pos(view_camera[0]
,targetx-camera_get_view_width(view_camera[0])/2
,targety-camera_get_view_height(view_camera[0])/2);
camera_set_view_angle(view_camera[0],angle);