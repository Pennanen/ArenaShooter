/// @description Insert description here
// You can write your code in this editor
image_xscale += 0.01;
image_yscale += 0.01;
image_angle -= image_xscale;
if (image_index > 2 && image_index < 4) {
if (!audio_is_playing(sound_explosion) && insideView(x,y))
	audio_play_sound(sound_explosion,1,0);
	audio_sound_gain(sound_explosion,0.2,0);
	audio_play_sound(sound_explosion_2,1,0);
	audio_sound_gain(sound_explosion_2,0.1,0);	
	
	
}
if (p > 0.4){p-=0.025;}
audio_sound_pitch(sound_explosion_2,p);
	audio_sound_pitch(sound_explosion,p/2);
	
