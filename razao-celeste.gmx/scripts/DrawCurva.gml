///DrawCurva( x1, y1, x2, y2, crv dis, crv dir, ++ c1, c2, p, w )
var x1=argument[0], y1=argument[1], x2=argument[2], y2=argument[3], cx=argument[4], cy=argument[5];

var cdis = point_distance((x1+x2)/2,(y1+y2)/2,cx,cy), cdir = point_direction((x1+x2)/2,(y1+y2)/2,cx,cy);

var dis = point_distance(x1,y1,x2,y2), dir = point_direction(x1,y1,x2,y2);
if (dis = 0) exit;
var c1 = draw_get_colour(), c2 = c1, p = 1, w = 1;

if (argument_count > 6) c1 = argument[6];
if (argument_count > 7) c2 = argument[7];
if (argument_count > 8) p  = dis/argument[8];
if (argument_count > 9) w  = argument[9];

var c;
for(var i=p; i<=dis; i+=p) {
    c = merge_colour(c1,c2,i/dis);
    draw_line_width_colour(
        x1+lengthdir_x(i-p,dir)+sin(degtorad((i-p)*(180/dis)))*lengthdir_x(cdis,cdir),
        y1+lengthdir_y(i-p,dir)+sin(degtorad((i-p)*(180/dis)))*lengthdir_y(cdis,cdir),
        x1+lengthdir_x(i,dir)+sin(degtorad(i*(180/dis)))*lengthdir_x(cdis,cdir),
        y1+lengthdir_y(i,dir)+sin(degtorad(i*(180/dis)))*lengthdir_y(cdis,cdir),
        w, c, c
    );
}
