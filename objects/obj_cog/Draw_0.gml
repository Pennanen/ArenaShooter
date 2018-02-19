/// @description Insert description here
// You can write your code in this editor

for(i=0;i<8;i++)
	{
draw_sprite_ext(spr_cog_tooth,0,
x+lengthdir_x(image_xscale*28,image_angle+45*i),
y+lengthdir_y(image_xscale*28,image_angle+45*i),image_xscale,image_yscale,image_angle+45*i,c_white,1);
	}
	draw_self();

