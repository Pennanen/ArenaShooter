
PlayerName = "Player"
colour = c_lime;
enemy = false; // causes lights to go off etc
oldHp = 100;
prevx = x;
prevy = y;
tox = x;
toy = y;
time = 0;

maxhp = 100;
hp = maxhp;
hpImaginary = hp;
hpMulti = 0;
balanceHp = false;

gun = obj_gun_machine;
gun_index = 0;
look_angle = 0;
torso_angle = 0;
leg_angle = 0;

leg_sprite = spr_p_leg_idle;
torso_sprite = spr_p_torso_idle;
head_sprite = spr_p_head_idle;
wiggleTime =0;
scaleWiggle = 0;
scale = 1;
image_speed = 0;
alarm[1] = 2;