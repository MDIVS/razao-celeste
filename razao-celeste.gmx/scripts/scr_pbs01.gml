if ((GoX!=0 || GoY!=0) && point_distance(x,y,GoX,GoY) > sprite_width) {
    var xspeed = lengthdir_x(Spd[0],direction);
    var yspeed = lengthdir_y(Spd[0],direction);
    xspeed += lengthdir_x(Spd[2],point_direction(x,y,GoX,GoY));
    yspeed += lengthdir_y(Spd[2],point_direction(x,y,GoX,GoY));
    
    direction = point_direction(0,0,xspeed,yspeed);
    Spd[0] = min(point_distance(0,0,xspeed,yspeed),Spd[1]);
} else {Spd[0] = max(0,Spd[0]-Spd[2])};

if (VIEW_OBJECT == id) {
    DrawCircle(GoX,GoY,6,16743936,16743936,1,1,12,2);
    DrawCircle(GoX,GoY,2,16743936,16743936,1,1,8,2);
}

if (VIEW_OBJECT == id) {
    
}
if (Vida[0] > 0) {Vida[0] = min(Vida[1],Vida[0]+Vida[2])} else {Vida[0] = 0};

draw_self();
scr_propsy(Prop);
scr_portos(Port);
scr_weaponsy(Weap);

draw_line_width_colour(x-sprite_width/2,y+sprite_height/2+5,x-sprite_width/2+sprite_width*(Vida[0]/Vida[1]),y+sprite_height/2+5,3,c_orange,c_orange);
draw_line_width_colour(x-sprite_width/2,y+sprite_height/2+9,x-sprite_width/2+sprite_width*(Vida[0]/Vida[1]),y+sprite_height/2+9,2,c_aqua,c_aqua);

x += lengthdir_x(Spd[0],direction);
y += lengthdir_y(Spd[0],direction);
image_index++;
var dif = angle_difference(image_angle,direction);
if (abs(dif) > 0) {
    image_angle -= min(360/30/5,abs(dif))*sign(dif);
}
