///act_fixinpoint()
if (point_distance(x,y,GoX,GoY) > sprite_width) {
    var xspeed = lengthdir_x(Spd[0],direction);
    var yspeed = lengthdir_y(Spd[0],direction);
    xspeed += lengthdir_x(Spd[2],point_direction(x,y,GoX,GoY));
    yspeed += lengthdir_y(Spd[2],point_direction(x,y,GoX,GoY));
    
    direction = point_direction(0,0,xspeed,yspeed);
    Spd[0] = min(point_distance(0,0,xspeed,yspeed),Spd[1]);
} else {Spd[0] = max(0,Spd[0]-Spd[2])};

if (VIEW_OBJECT == id) {
    DrawCircle(GoX,GoY,8,c_orange,c_orange,1,1,12,3);
}
