
colliderInstance = collision_line(x,y,x+lengthdir_x(spd/3,dir),y+lengthdir_y(spd/3,dir),obj_practice_doll,true,false);
if (colliderInstance != noone && destroy = false)
	{
	if (!audio_is_playing(sound_explosion)){
	audio_play_sound(sound_explosion,1,0);
	audio_sound_gain(sound_explosion,0.05,0);
	audio_sound_pitch(sound_explosion,5);}
	if (colliderInstance.dead = false){
	with(colliderInstance)
		{
		hp-=other.dmg;
		wiggleTime = 9;
		}
		instance_destroy();
		destroy = true;}
	}

if (global.multiplayer = false)
{
colliderInstance = collision_line(x,y,x+lengthdir_x(spd/3,dir),y+lengthdir_y(spd/3,dir),obj_wall,true,false);
if (colliderInstance != noone && destroy = false)
	{

		instance_destroy();
		destroy = true;
	}
}