///ascr_laser( dba )
var dba = argument[0];
var dis = dba[1], dir = dba[2]+image_angle;
dba[@ 5] = max(0,dba[5]-1);
var xx = x+lengthdir_x(dis,dir), yy = y+lengthdir_y(dis,dir);

var alvo = ascr_mirar( dba );
if (alvo != -4) {
    var dxx = alvo.x+lengthdir_x(alvo.sprite_width,point_direction(alvo.x,alvo.y,xx,yy));
    var dyy = alvo.y+lengthdir_y(alvo.sprite_width,point_direction(alvo.x,alvo.y,xx,yy));
    while(!instance_position(dxx,dyy,alvo)) {
        dxx+=lengthdir_x(1,point_direction(dxx,dyy,alvo.x,alvo.y));
        dyy+=lengthdir_y(1,point_direction(dxx,dyy,alvo.x,alvo.y));
    }
    draw_line_colour(xx,yy,dxx,dyy,c_red,c_red);
    
    if (dba[5] == 0) {
        alvo.Alvo = id;
        alvo.Vida[0]-=.2;
        dba[@ 5]=30/3;
        PlaySom(test,0,VSom,0);
    }
} else {
    var dd = angle_difference(dba[3]+image_angle,dba[4]);
    dba[@ 4] = dba[4]+min(abs(dd),2)*sign(dd);
}
draw_sprite_ext(aspr_laser,0,xx,yy,1,1,dba[4],-1,1);
