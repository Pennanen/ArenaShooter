///plan(x,y,spd);

var targetx = argument0;
var targety = argument1;
var spd = argument2;

mp_grid_path(mpGrid_air,path_air,x,y,targetx,targety,true);
path_start(path_air,spd,path_action_stop,true);