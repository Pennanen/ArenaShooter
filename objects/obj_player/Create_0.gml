instance_create_depth(x,y,0,obj_camera);
instance_create_depth(x,y,0,obj_hud);
instance_create_depth(x,y,0,obj_gun_machine);
instance_create_depth(x,y,0,obj_cursor);

//class
instance_create_depth(x,y,0,obj_class_soldier);
//audio
audio_listener_orientation(0,1,0,0,0,1);

phy_fixed_rotation = true;

if (global.multiplayer){alarm[1] = 30;}
PlayerName = "Player"
deathTimer = 4;

spawn = 0;
playerTeam = 0;

spawned = false;
dead_location_x = room_width/2;
dead_location_y = -500;
if (global.multiplayer){dead = true;}else{dead = false;}
global.mainEmitter = audio_emitter_create();
audio_emitter_gain(global.mainEmitter,0.1);
maxhp = 100;
hp = maxhp;
hpImaginary = hp;
hpMulti = 0;
balanceHp = false;
keyl = false;
keyr = false;
keyu = false;
keyd = false;
keydash = false;

gun = obj_gun_machine;
gunClip = 1;
gunAmmo = 1;

fall = false;
dashDir = 0;
dash = false;
dashCooldown = false;

force = 10;
dampening = 0.1;
max_spd = 1.8;
weight = 0;

scale = 1;
scaleWiggle = 0;
wiggleTime = 0;

depth = -y/100;
look_angle = 0;
torso_angle = 0;
leg_angle = 0;
leg_angleprev = leg_angle;

leg_sprite = spr_p_leg_idle;
torso_sprite = spr_p_torso_idle;
head_sprite = spr_p_head_idle;