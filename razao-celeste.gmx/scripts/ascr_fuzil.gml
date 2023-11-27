///ascr_fuzil( dba )
var dba = argument[0];
var dis = dba[1], dir = dba[2]+image_angle;
var xx = x+lengthdir_x(dis,dir), yy = y+lengthdir_y(dis,dir);

draw_sprite_ext(aspr_fuzil,0,xx,yy,1,1,dba[4],-1,image_alpha);

var alvo = ascr_mirar( dba );
if (alvo != -4 && dba[5] == 0) {
    var ic = disparar( dba, dspr_fuzil, dscr_fuzil );
    ic.image_blend = team_colour;
    PlaySom(snd1,0,VSom,0);
    dba[@ 5] = room_speed;
} else {
    var dd = angle_difference(dba[3]+image_angle,dba[4]);
    dba[@ 4] = dba[4]+min(abs(dd),2)*sign(dd);
}

dba[@ 5] = max(0,dba[5]-1);
