///scr_propsy( prop sy )
var ps = argument[0];
for (var i=0; i<array_length_1d(ps); i++) {
    var p = ps[i];
    var xx = x+lengthdir_x(p[0],p[1]+image_angle)+lengthdir_x(4,image_angle+p[1]+p[2]);
    var yy = y+lengthdir_y(p[0],p[1]+image_angle)+lengthdir_y(4,image_angle+p[1]+p[2]);
    part_particles_create(DRAPARTSY,xx,yy,parts.propluz,Spd[0]/Spd[1]*5);
}
