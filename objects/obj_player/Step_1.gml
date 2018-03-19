if (!dead){
keyl = keyboard_check(ord("A")) ||keyboard_check(vk_left) ;
keyr = keyboard_check(ord("D")) ||keyboard_check(vk_right) ;
keyu = keyboard_check(ord("W")) ||keyboard_check(vk_up) ;
keyd = keyboard_check(ord("S")) ||keyboard_check(vk_down) ;
keydash = keyboard_check_pressed(vk_shift) ||mouse_check_button_pressed(mb_right);

if (keyl || keyr || keyu || keyd)
	{
	leg_sprite = spr_p_leg_run;
	torso_sprite = spr_p_torso_run;
	head_sprite = spr_p_head_run;
	image_speed = abs(phy_speed)/2;
	}
	else
	{
	leg_sprite = spr_p_leg_idle;
	if (leg_angle = leg_angleprev){image_speed = 1;}else{image_speed = 2;}
	torso_sprite = spr_p_torso_idle;
	head_sprite = spr_p_head_idle;	
	}
	
	

leg_angleprev = leg_angle;

if (keyl||keyr||keyu||keyd){
	var dir = point_direction(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y);
diff = angle_difference(dir,-phy_rotation)+(angle_difference(point_direction(x,y,mouse_x,mouse_y),leg_angle))/4;
leg_angle+=clamp(.7*diff,-12,12);
}
else
{
		var dir = point_direction(x,y,mouse_x,mouse_y)
diff = angle_difference(dir,leg_angle);
leg_angle+=clamp(.7*diff,-15,15);
	
}
phy_rotation = -leg_angle;



var dir = point_direction(x,y,mouse_x,mouse_y);
diff = angle_difference(dir,look_angle);
look_angle+=clamp(.7*diff,-15,15);
//look_angle=clamp(look_angle,leg_angle-55,leg_angle+55)+clamp(.7*diff,-7,7);


torso_angle =  leg_angle+angle_difference(look_angle,leg_angle)/2 mod 360;
}
else if (spawn = 0)//dead
{
if (hp <= 0) 
	{
	phy_position_x =dead_location_x;
	phy_position_y =dead_location_y;
	alarm[1] = room_speed*deathTimer;
	hp = maxhp;
	}
}
else if (spawn = 1|| spawn = 2)
	{
	playerTeam = spawn;
	if (!spawned){
		var xx1 = random_range(0,obj_spawn_1.sprite_width);
		var yy1 = random_range(0,obj_spawn_1.sprite_height);
		var xx2 = random_range(0,obj_spawn_2.sprite_width);
		var yy2 = random_range(0,obj_spawn_2.sprite_height);
		if (spawn = 1) {phy_position_x = obj_spawn_1.x+xx1;phy_position_y = obj_spawn_1.y+yy1}
		if (spawn = 2) {phy_position_x = obj_spawn_2.x+xx2;phy_position_y = obj_spawn_2.y+yy2}
		instance_create_depth(x,y,-200,obj_magic_explosion);
		spawned = true;
		}
		else
		{
		dead = false;
		spawn = 0;
		spawned = false;
		gun.ammo = gun.magazine;
		}
	}
