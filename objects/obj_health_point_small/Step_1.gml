
player_on = place_meeting(x,y,obj_player);
enemy_on = place_meeting(x,y,obj_playerDummy);
friend_on = place_meeting(x,y,obj_friendDummy);
if (can_tick)
{
if (scale < 0.7) {scale+=0.1}	else {scale = 0.7;}
}
else
{
if (scale > 0) {scale-=0.15} else {scale = -0.1;}
}