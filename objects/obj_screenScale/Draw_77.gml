/// @description Draw Interpolation
draw_surface_ext(application_surface,(window_get_width()/2)-((w*scale)/2),(window_get_height()/2)-((h*scale)/2) ,scale,scale,0,c_white,1)

//turn off texture interpolation
gpu_set_texfilter(false);

//Adapt Screen Resolution at the Screen
if window_get_fullscreen()
    {
    //display size
    screen_w = display_get_width();
    screen_h = display_get_height();
    }
        else
        {
        //display size
        screen_w = window_get_width();
        screen_h = window_get_height();
        }
  
//recreate the surface if not exists
if(!surface_exists(screen_sur))
    screen_sur = surface_create(app_w * app_xscal, app_h * app_yscal);


//render on the upscaled surface
surface_set_target(screen_sur);
draw_surface_ext(application_surface, 0, 0, app_xscal, app_yscal, 0, -1, 1);
surface_reset_target();

//draw the big surface stretched fit the screen
gpu_set_blendenable(0);
gpu_set_texfilter(true);
draw_surface_stretched(screen_sur, 0, 0, screen_w, screen_h);
gpu_set_texfilter(false);
gpu_set_blendenable(1);


