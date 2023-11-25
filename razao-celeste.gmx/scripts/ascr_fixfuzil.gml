///ascr_fuzil( dba )
var dba = argument[0];
var dis = dba[1], dir = dba[2]+image_angle;
var xx = x+lengthdir_x(dis,dir), yy = y+lengthdir_y(dis,dir);
dba[@ 4] = dba[3]+image_angle;

if (dba[5] == 0) {
    var alvos = dba[9], alvo = -4;
    for (var i=0; i<array_length_1d(alvos); i++) {
        alvo = get_pxinimigo(xx,yy,alvos[i]);
        if (alvo != -4) break;
    }
    
    if (alvo != -4) {
        if (collision_line(xx,yy,xx+lengthdir_x(240,dba[@ 4]),yy+lengthdir_y(240,dba[@ 4]),alvo,1,1)) {
            disparar( dba, dspr_fuzil, dscr_fuzil );
            PlaySom(snd1,0,VSom,0);
            dba[@ 5] = room_speed;
        }
    }
}

dba[@ 5] = max(0,dba[5]-1);
