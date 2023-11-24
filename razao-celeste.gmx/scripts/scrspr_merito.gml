///scrspr_merito( x, y, raio, ++ cor, a1, a2, n star );
var xx = argument[0], yy = argument[1], rr = argument[2];
var c = draw_get_colour(), a1 = draw_get_alpha(), a2 = a1;
var ss = 8;

if (argument_count > 3) c = argument[3];
if (argument_count > 4) a1 = argument[4];
if (argument_count > 5) a2 = argument[5];
if (argument_count > 6) ss = argument[6];

draw_primitive_begin(pr_trianglestrip);
for (var i=0; i<=ss; i++) {
    draw_vertex_colour(xx+lengthdir_x(rr*.7,360/ss*i),yy+lengthdir_y(rr*.7,360/ss*i),c,a1);
    draw_vertex_colour(xx+lengthdir_x(rr,360/ss*i),yy+lengthdir_y(rr,360/ss*i),c,a2);
    
    draw_vertex_colour(xx+lengthdir_x(rr*.4,360/ss*(i+.5)),yy+lengthdir_y(rr*.4,360/ss*(i+.5)),c,a1);
    draw_vertex_colour(xx+lengthdir_x(rr*.7,360/ss*(i+.5)),yy+lengthdir_y(rr*.7,360/ss*(i+.5)),c,a2);
}
draw_primitive_end();
