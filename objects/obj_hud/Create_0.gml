/// @description Insert description here
// You can write your code in this editor
displayw = display_get_width();
displayh = display_get_height();
guiW = camera_get_view_width(view_camera[0]);
guiH = camera_get_view_height(view_camera[0]);
guiX = camera_get_view_x(view_camera[0]);
guiY = camera_get_view_y(view_camera[0]);
h = 0;
scale = 1;
totalSeconds = 0;
steps = 0;
s = 0;
m = 0;
depth = -3000;

hpX = 0;
hpY = 154;

ammoX = -200;
ammoY = 145;

hpAnchorX = obj_camera.targetx+hpX;
hpAnchorY = obj_camera.targety+hpY;

ammoAnchorX = obj_camera.targetx+ammoX;
ammoAnchorY = obj_camera.targety+ammoY;