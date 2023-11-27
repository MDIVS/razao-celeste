///draw_galho( spr, img, x1, y1, x2, y2, crv dis, crv dir, ++ c1, c2, p, w )
var spr=argument[0], img=argument[1], x1=argument[2], y1=argument[3], x2=argument[4], y2=argument[5], cx=argument[6], cy=argument[7];

var cdis = point_distance((x1+x2)/2,(y1+y2)/2,cx,cy), cdir = point_direction((x1+x2)/2,(y1+y2)/2,cx,cy);

var dis = point_distance(x1,y1,x2,y2), dir = point_direction(x1,y1,x2,y2);
if (dis = 0) exit;
var c1 = draw_get_colour(), c2 = c1, p = 1, w = 1;

if (argument_count > 6) c1 = argument[8];
if (argument_count > 7) c2 = argument[9];
if (argument_count > 8) p  = dis/argument[10];
if (argument_count > 9) w  = argument[11];

var t,a=draw_get_alpha(), c, _x1, _x2, _y1, _y2;
for(var i=p; i<=dis; i+=p) {
    c = merge_colour(c1,c2,i/dis);
    _x1=x1+lengthdir_x(i-p,dir)+sin(degtorad((i-p)*(180/dis)))*lengthdir_x(cdis,cdir);
    _y1=y1+lengthdir_y(i-p,dir)+sin(degtorad((i-p)*(180/dis)))*lengthdir_y(cdis,cdir);
    _x2=x1+lengthdir_x(i,dir)+sin(degtorad(i*(180/dis)))*lengthdir_x(cdis,cdir);
    _y2=y1+lengthdir_y(i,dir)+sin(degtorad(i*(180/dis)))*lengthdir_y(cdis,cdir);
    draw_line_width_colour(_x1, _y1, _x2, _y2, w, c, c);
    draw_sprite_ext(spr,img,(_x1+_x2)/2,(_y1+_y2)/2,1,1,point_direction(_x1,_y1,_x2,_y2)-60+120*(round(i/p) mod 2),c,a);
}
