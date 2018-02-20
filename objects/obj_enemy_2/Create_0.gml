leg_sprite = spr_e_leg_run_2;
torso_sprite = spr_e_torso_run_2;
head_sprite = spr_e_head_run_2;

leg_angle = 0;
torso_angle = 0;
look_angle = 0;
	
image_speed = abs(phy_speed)/1;
	
mpPlanner = instance_create_depth(x,y,0,obj_path_planner);
mpPlanner.follower = id;
spd = 33;
force = 15;
targetx = 0;
targety = 0;
planStep = 0;



//statemachine
target = obj_player;
state = "seek_player";

fire = false;
maxhp = 5;
hp = maxhp;

depth = -y/100;
scale = 0.75;
scaleWiggle = 0;
wiggleTime = 0;
image_xscale = scale+scaleWiggle;
image_yscale = scale-scaleWiggle;