/// @description Insert description here
// You can write your code in this editor
if(instance_exists(target))
{
	
x = target.x;
y = target.y;

}
else
{
	
	if (scale > 0) {scale-=0.05} else{instance_destroy();}
	
}
if (destroy) 
	{
	if (scale > 0) {scale-=multi;multi+=0.025;} else{instance_destroy();}
	}
light_set_scale(scale);
