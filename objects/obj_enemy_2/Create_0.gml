leg_sprite = spr_e_leg_run_2;
torso_sprite = spr_e_torso_run_2;
head_sprite = spr_e_head_run_2;

leg_angle = 0;
torso_angle = 0;
look_angle = 0;
	
image_speed = abs(phy_speed)/1;
	
mpPlanner = instance_create_depth(x,y,0,obj_path_planner);
mpPlanner.follower = id;
spd = 8;
force = 7;
targetx = 0;
targety = 0;
planStep = 0;



//statemachine
target = obj_player;
state = "seek_player";

fire = false;
maxhp = 40;
hp = maxhp;
shootRange = 405;
gun = instance_create_depth(x,y,depth,obj_gun_enemy_2);
gun.target = self;

depth = -y/100;
scale = 1;
scaleWiggle = 0;
wiggleTime = 0;
image_xscale = scale+scaleWiggle;
image_yscale = scale-scaleWiggle;