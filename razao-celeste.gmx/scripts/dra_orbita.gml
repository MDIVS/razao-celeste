///dra_orbita( x, y, raio grande, excentricidade, index, pr, c1, c2 )
var alpha = draw_get_alpha();

//valores do plano
var cx = argument0;
var cy = argument1;

//valores da orbita
var a = argument2;
var e = argument3;
var b = a*(1-e);
var f1 = -b;
var c1 = argument7;

//valores de planeta
var pr = argument5;
var c2 = argument6;
var dir = argument4;
var xx=lengthdir_x(a,dir);
var yy=lengthdir_y(b,dir);

draw_primitive_begin(pr_linestrip);
for (var i=0;i<=360;i++) draw_vertex(cx-f1+lengthdir_x(a,i),cy+lengthdir_y(b,i));
draw_primitive_end();

draw_circle_colour(cx-f1+xx,cy+yy,pr,c1,c1,0);
draw_circle_colour(cx-f1+xx,cy+yy,pr*.8,c2,c2,0);
