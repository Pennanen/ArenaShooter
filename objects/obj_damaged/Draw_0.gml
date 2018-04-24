/// @description Insert description here
// You can write your code in this editor
var vpos_x = camera_get_view_x(view_camera[0]);
var vpos_y = camera_get_view_y(view_camera[0]);
var vpos_w = camera_get_view_width(view_camera[0]);
var vpos_h = camera_get_view_height(view_camera[0]);
draw_set_alpha(a);
draw_rectangle_color(vpos_x-50,vpos_y-50,vpos_x+50+vpos_w,vpos_y+50+vpos_h,c_red,c_black,c_red,c_black,false);
draw_rectangle_color(vpos_x-50,vpos_y-50,vpos_x+50+vpos_w,vpos_y+50+vpos_h,c_black,c_red,c_black,c_red,false);
draw_set_alpha(1);