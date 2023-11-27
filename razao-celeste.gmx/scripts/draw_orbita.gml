///draw_orbita( x, y, scale, a, e, perielio, po, index )
//valores do plano
var cx = argument0;
var cy = argument1;

//valores da orbita
var s = argument2; //scale
var a = argument3*s;
var b = a*(1-argument4);
var f1 = -a+argument5*s;
var po = argument6; //período orbital
var dir = argument7; //disperdício de argumento

draw_primitive_begin(pr_linestrip);
for(var i=0;i<=360;i++)draw_vertex(cx+lengthdir_x(a,i),cy+lengthdir_y(b,i));
draw_primitive_end();
