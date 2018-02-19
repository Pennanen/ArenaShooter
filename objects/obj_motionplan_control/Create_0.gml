/// @description Insert description here
// You can write your code in this editor

globalvar mpGrid;

mpGrid = mp_grid_create(0,0,room_width/16,room_height/16,16,16);

mp_grid_add_instances(mpGrid,obj_wall,true);
mp_grid_add_instances(mpGrid,obj_wall_no_bullet,true);
