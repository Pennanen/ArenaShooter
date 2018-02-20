/// @description Insert description here
// You can write your code in this editor
if (instance_number(obj_enemy_1)<maxEnemies && canSpawn)
	{
	spawnRate = choose(0.25,0.5)*room_speed;
	i = irandom(7);
	//instance_create_depth(p[i,0],p[i,1],0,enemyPool[irandom(poolMax)]);	
	instance_create_depth(p[i,0],p[i,1],0,enemyPool[2]);	
	canSpawn = false;
	alarm[0] = spawnRate;
	}

maxEnemies = startEnemies+floor(obj_hud.totalSeconds)/interval;