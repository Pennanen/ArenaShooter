
depth = -1*(y/10);

image_xscale = scale+scaleWiggle;
image_yscale = scale-scaleWiggle;
if (wiggleTime > 0){
scaleWiggle = scr_wiggle(1,-wiggleTime/20,wiggleTime);
wiggleTime -= 1;
c = c_gray;
}
else
{
c = c_white;
scaleWiggle = 0;	
}
velocity = abs(Vx*Vx+Vy*Vy);

//check collisions
//Horizontal Collision
if (place_meeting(x + Vx, y, obj_wall_parent)) { //about to collide
    while (!place_meeting(x + sign(Vx), y, obj_wall_parent)) { //loop if condition is not true
        x += sign(Vx);
    }
    Vx = 0;
}

//Vertical Collision
if (place_meeting(x, y + Vy, obj_wall_parent)) {
    while (!place_meeting(x, y + sign(Vy), obj_wall_parent)) { 
        y += sign(Vy);
    }
    Vy = 0;
}

// Both 
if (place_meeting(x + Vx, y + Vy, obj_wall_parent)) {
    while (!place_meeting(x + sign(Vx), y + sign(Vy), obj_wall_parent)) { 
        y += sign(Vy);
        x += sign(Vx);
    }
    Vy = 0;
    Vx = 0;
}


//apply speed
x = x+Vx;
y = y+Vy;
if (keyl ||keyr || keyd ||keyu){
leg_angle = point_direction(xprevious,yprevious,x,y);}

