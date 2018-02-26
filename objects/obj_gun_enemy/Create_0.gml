/// @description Insert description here
// You can write your code in this editor
can_shoot = true;
rpm = 2;
gunpower = 9;
target = self;
		blastEmi = audio_emitter_create();
		audio_falloff_set_model(audio_falloff_linear_distance_clamped);
		audio_emitter_falloff(blastEmi,100,700,1);
		audio_emitter_gain(blastEmi,0.2);