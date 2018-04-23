var amount = argument0;
if (obj_player.hp < obj_player.maxhp)
{
if (obj_player.maxhp < obj_player.hp+amount) {obj_player.hp = obj_player.maxhp;}
else {obj_player.hp += amount}
}

