
if (instance_exists(obj_player)){
instance_create_depth(x,y,-1000,obj_light_init);

instance_destroy();
}else {alarm[0] = 1};

