///scr_move(hspd, vspd)
var hspd = to_deltatime(argument[0]);
var vspd = to_deltatime(argument[1]);

//Horisontal Collisions
if (scr_gridPlaceMeeting(x+hspd, y)) {
while (!scr_gridPlaceMeeting(x+sign(hspd), y)){
x+=sign(hspd);
}
hspd = 0;
}
//Move Horizontally
x += hspd;

//Vertical Collision
if (scr_gridPlaceMeeting(x,y+vspd)){
while(!scr_gridPlaceMeeting(x, y+sign(vspd))){
y+=sign(vspd);
}
vspd = 0;
}

//Move Verticaly
y += vspd;
