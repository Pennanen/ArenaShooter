/// @description Insert description here
// You can write your code in this editor
if (instance_number(obj_enemy_1)<maxEnemies && canSpawn)
	{
	spawnRate = choose(1,2,3)*30;
	i = irandom(7);
	instance_create_depth(p[i,0],p[i,1],0,enemyPool[irandom(poolMax)]);	
	canSpawn = false;
	alarm[0] = spawnRate;
	}

maxEnemies = 2+floor(obj_hud.totalSeconds)/30;