var p = PLANETA; //corpo celeste
if (point_distance(x,y,p.x,p.y) > sy.DH/2) {
    var metax = lengthdir_x(.5,point_direction(x,y,p.x,p.y));
    var metay = lengthdir_y(.5,point_direction(x,y,p.x,p.y));
    
    XSPEED = XSPEED+(metax-XSPEED);
    YSPEED = YSPEED+(metay-YSPEED);
}

var metax = lengthdir_x(.5,point_direction(x,y,p.x,p.y)+90);
var metay = lengthdir_y(.5,point_direction(x,y,p.x,p.y)+90);

XSPEED = XSPEED+(metax-XSPEED);
YSPEED = YSPEED+(metay-YSPEED);
direction = point_direction(x,y,XSPEED,YSPEED);
image_angle -= angle_difference(image_angle,direction+180)/30;

if (VIEW_OBJECT == id) {
    var dir = point_direction(x,y,PLANETA.x,PLANETA.y);
    draw_set_colour(c_aqua);
    draw_arrow(x+lengthdir_x(sprite_width/3*2,dir),y+lengthdir_y(sprite_width/3*2,dir),PLANETA.x+lengthdir_x(sy.DH/4+sprite_width*.166,dir-180),PLANETA.y+lengthdir_y(sy.DH/4+sprite_width*.166,dir-180),8);
    draw_set_colour(c_white);
}
