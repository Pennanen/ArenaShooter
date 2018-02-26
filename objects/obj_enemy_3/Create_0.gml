leg_sprite = sprite_index;

image_speed = abs(phy_speed)/1;
canDmg = true;
leg_angle = 0;
torso_angle = 0;
look_angle = 0;
	
mpPlanner_air = instance_create_depth(x,y,0,obj_path_planner_air);
mpPlanner_air.follower = id;
spd = 14;
force = 9;
targetx = 0;
targety = 0;
planStep = 0;

//statemachine
target = obj_player;
state = "seek_player";

fire = false;
maxhp = 35;
hp = maxhp;

scaleWiggle = 0;
wiggleTime = 0;
scale = 1;
	depth = -y/100;
	image_xscale = 0.75;
	image_yscale = 0.75;