/// @description Insert description here
// You can write your code in this editor
can_shoot = true;
rpm = 0.5;
target = self;
gunpower = 6;
		blastEmi = audio_emitter_create();
		audio_falloff_set_model(audio_falloff_linear_distance_clamped);
		audio_emitter_falloff(blastEmi,100,700,1);
		audio_emitter_gain(blastEmi,0.2);