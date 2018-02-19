leg_sprite = spr_e_leg_run;
torso_sprite = spr_e_torso_run;
head_sprite = spr_e_head_run;

leg_angle = 0;
torso_angle = 0;
look_angle = 0;

image_speed = abs(phy_speed)/1;
	
mpPlanner = instance_create_depth(x,y,0,obj_path_planner);
mpPlanner.follower = id;
spd = 15;
force = 9;
targetx = 0;
targety = 0;
planStep = 0;

//statemachine
target = obj_player;
state = "seek_player";
scale = 1;
scaleWiggle = 0;
wiggleTime = 0;

fire = false;
maxhp = 8;
hp = maxhp;

gun = instance_create_depth(x,y,depth,obj_gun_enemy);
gun.target = self;
	
	depth = -y/100;
image_xscale = scale+scaleWiggle;
image_yscale = scale-scaleWiggle;