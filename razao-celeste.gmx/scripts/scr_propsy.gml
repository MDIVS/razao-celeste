///scr_propsy( prop sy )
if Spd[0]==Spd[1] exit;
if object_index==obj_pmg&&!Acel exit;
var ps = argument[0];
for (var i=0; i<array_length_1d(ps); i++) {
    var p = ps[i];
    var xx = x+lengthdir_x(p[0],p[1]+image_angle)+lengthdir_x(4,image_angle+p[1]+p[2]);
    var yy = y+lengthdir_y(p[0],p[1]+image_angle)+lengthdir_y(4,image_angle+p[1]+p[2]);
    repeat(floor(Spd[0]/Spd[1]*10))part_particles_create_colour(DRAPARTSY,xx+1-random(2),yy+1-random(2),p[6],p[3],1);
}
