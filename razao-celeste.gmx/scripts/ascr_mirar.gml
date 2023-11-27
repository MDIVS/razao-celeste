///ascr_mirar( arma )
var arma = argument[0];
var dis = arma[1], dir = arma[2]+image_angle;
var xx = x+lengthdir_x(dis,dir), yy = y+lengthdir_y(dis,dir);

var alvos = arma[9];
var alvo = -4, ads = RA[1];
for (var i=0; i<array_length_1d(alvos); i++) {
    with(alvos[i]) {if (point_distance(x,y,xx,yy) < ads) {alvo = id; ads = point_distance(x,y,xx,yy)}};
}

if (alvo == -4) return(-4);

var dd = angle_difference(point_direction(xx,yy,alvo.x,alvo.y),arma[4]);
arma[@ 4] = arma[4]+min(abs(dd),8)*sign(dd);

if (abs(dd)<=8) {return(alvo)} else {return(-4)};
