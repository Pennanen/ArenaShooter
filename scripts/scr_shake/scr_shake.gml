var xvel = argument0;
var yvel = argument1;
var time = argument2;

s = instance_create_depth(x,y,0,obj_shake);
s.shakex += xvel;
s.shakey += yvel;
with(s)
	{
	alarm[0] = time;	
	}