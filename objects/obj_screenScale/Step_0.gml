/// @description Press "F" for Fullscreen Toggle
if keyboard_check_pressed(vk_f1)
{
    //Toggle Fullscreen
    if window_get_fullscreen()
    {
        window_set_fullscreen(false)
        window_set_size(w*scale,h*scale)
        }
        else
        {
         window_set_fullscreen(true)
     }
      window_set_size(w*scale,h*scale)
}

w = camera_get_view_width(view_camera[0]);
h = camera_get_view_height(view_camera[0]);