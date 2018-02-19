/// @description Insert description here
// You can write your code in this editor
p[0,0] = 96;
p[0,1] = 96;

p[1,0] = room_width-96;
p[1,1] = 96;

p[2,0] = room_width-96;
p[2,1] = room_height-96;

p[3,0] = 96;
p[3,1] = room_height-96;

p[4,0] = 200;
p[4,1] = 96;

p[5,0] = room_width-200;
p[5,1] = 96;

p[6,0] = room_width-200;
p[6,1] = room_height-96;

p[7,0] = 200;
p[7,1] = room_height-96;

enemyPool[0] = obj_enemy_1;
enemyPool[1] = obj_enemy_2;
enemyPool[2] = obj_enemy_3;
poolMax = 2;

maxEnemies = 0;

canSpawn = true;
spawnRate = choose(1,2,3)*room_speed;
