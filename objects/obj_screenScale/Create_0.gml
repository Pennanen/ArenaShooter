/// @description Randomize
randomize();



w = camera_get_view_width(view_camera[0]);
h = camera_get_view_height(view_camera[0]);

///Set screen scale variable
//Disable the Application Surface
application_surface_draw_enable(false);
surface_resize(application_surface,w,h)

//set initial scale
scale=2
if !window_get_fullscreen()
{
window_set_size(w*scale,h*scale)
}

//display size
screen_w = display_get_width();
screen_h = display_get_height();

//actual application surface size
app_w = w;
app_h = h;

//rounded scalint for pixel perfect
app_xscal = ceil(screen_w / app_w);
app_yscal = ceil(screen_h / app_h);

//up-scaled surface 
screen_sur = surface_create(app_w * app_xscal, app_h * app_yscal);



///Goto next room
        window_set_fullscreen(false)
        window_set_size(w*0.8,h*0.8)
room_goto_next();


