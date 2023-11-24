///scr_invmenor()
if (Vida[0] < 0) {
    instance_destroy();
    exit;
}

draw_self();
draw_set_alpha(image_alpha);
draw_rectangle_colour(x-24,y+32,x-24+Vida[0]/Vida[1]*48,y+35,c_lime,c_lime,c_lime,c_lime,0);
draw_set_alpha(sy.Alpha[0]);

scr_weaponsy( AS );
scr_propsy(   PS );

var alvo = -4, ads = 500, add = -1;
alvo = get_pxinimigo(x,y,obj_aliado);
if (alvo != -4) {
    add = 1;
    var dd = angle_difference(point_direction(x,y,alvo.x,alvo.y),direction);
    if (abs(dd) > 90) {
        if (point_distance(x,y,alvo.x,alvo.y) > 100) {
            add = 2;
            direction += min(abs(dd),2)*sign(dd);
        }
    } else direction += min(abs(dd),2)*sign(dd);
    if (collision_line(x,y,x+lengthdir_x(240,direction),y+lengthdir_y(240,direction),alvo,1,1)) add = 2;
}
Speed = min(1,max(0,Speed+add/room_speed/2));

Vida[0] = min(Vida[1],Vida[0]+Vida[2]);
image_alpha = min(1,image_alpha+1/room_speed);
image_angle = direction;
x += lengthdir_x(Speed,direction);
y += lengthdir_y(Speed,direction);
