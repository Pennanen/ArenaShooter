
if (room = rm_lobby)
	{
audio_sound_gain(music_loop,0,0);
audio_play_sound(music_loop,1,1);
audio_sound_gain(music_loop,global.music_gain,2500);
	}