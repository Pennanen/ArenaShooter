/// @description Insert description here
// You can write your code in this editor
if (instance_number(parent_enemy)<maxEnemies && canSpawn)
	{
	i = irandom(7);
	//instance_create_depth(p[i,0],p[i,1],0,enemyPool[irandom(poolMax)]);	
	instance_create_depth(x,y,0,enemyPool[irandom(poolMax)]);	
	canSpawn = false;
	alarm[0] = spawnRate;
	}

maxEnemies = startEnemies+floor(obj_hud.totalSeconds)/interval;