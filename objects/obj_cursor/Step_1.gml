/// @description Insert description here
// You can write your code in this editor
if (window_get_fullscreen())
{
var xx = 64;
var yy = 64;

var xw = xx+display_get_width()-128;
var yh = yy+display_get_height()-128;

var mx = display_mouse_get_x();
var my = display_mouse_get_y();

if (mx < xx){display_mouse_set(xx, my);}
if (mx > xw){display_mouse_set(xw, my);}

if (my < yy){display_mouse_set(mx, yy);}
if (my > yh){display_mouse_set(mx, yh);}
}
