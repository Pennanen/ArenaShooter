/// @description light_set_quality(quality)
/// @function light_set_quality
/// @param quality
/*
Sets the light quality after the lights have been initialized.
quality: The quality of the lighting surfaces, from 0 to 1.
*/
var w = camera_get_view_width(view_camera[0]);
var h = camera_get_view_height(view_camera[0]);
global._light_quality = argument0
surface_resize(global._light_map, w * global._light_quality, h * global._light_quality)
surface_resize(global._light_surface, global._light_size * global._light_quality, global._light_size * global._light_quality)
