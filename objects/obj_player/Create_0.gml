instance_create_depth(x,y,0,obj_camera);
instance_create_depth(x,y,0,obj_hud);
audio_listener_orientation(0,1,0,0,0,1);
global.mainEmitter = audio_emitter_create();
audio_emitter_gain(global.mainEmitter,0.1);
maxhp = 15;
hp = maxhp;
keyl = false;
keyr = false;
keyu = false;
keyd = false;
keydash = false;

gun = obj_gun;
gunClip = 1;
gunAmmo = 1;

fall = false;
dashDir = 0;
dash = false;
dashCooldown = false;

force = 55;
dampening = 0.5;
max_spd = 2.5;
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