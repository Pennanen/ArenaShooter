/// @description Insert description here
// You can write your code in this editor

if (destroy) 
	{
	if (scale > 0) {scale-=multi;multi+=0.025;} else{instance_destroy();}
	}
else
{
scale +=random_range(0.05,-0.05);
if (scale > 1.2) {scale = 1.1};
if (scale < 1) {scale = 1.1}
}
light_set_scale(scale);