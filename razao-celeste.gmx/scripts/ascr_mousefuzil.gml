///ascr_mousefuzil( dba )
var dba = argument[0];
var dis = dba[1], dir = dba[2]+image_angle;
var xx = x+lengthdir_x(dis,dir), yy = y+lengthdir_y(dis,dir);

draw_sprite_ext(aspr_fuzil,0,xx,yy,1,1,dba[4],-1,image_alpha);

var dd = 9;
if (Joys_device(JOYS) != -1) {
    dd = angle_difference(point_direction(xx,yy,device_mouse_x(Joys_device(JOYS)),device_mouse_y(Joys_device(JOYS))),dba[4]);
    dba[@ 4] = dba[4]+min(abs(dd),8)*sign(dd);
}

if (dba[5] == 0 && abs(dd)<=8) {
    disparar( dba, dspr_fuzil, dscr_fuzil );
    PlaySom(snd1,0,VSom,0);
    dba[@ 5] = room_speed/2;
} else {
    var dd = angle_difference(dba[3]+image_angle,dba[4]);
    dba[@ 4] = dba[4]+min(abs(dd),2)*sign(dd);
}

dba[@ 5] = max(0,dba[5]-1);
