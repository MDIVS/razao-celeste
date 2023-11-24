///DrawCircle( x, y, raio, ++ c1, c2, a1, a2, precisao, width );
var xx = argument[0], yy = argument[1], rr = argument[2];
var c1 = draw_get_colour(), c2 = c1, a1 = draw_get_alpha(), a2 = a1;
var ss = 8, ww = 1;

if (argument_count > 3) c1 = argument[3];
if (argument_count > 4) c2 = argument[4];
if (argument_count > 5) a1 = argument[5];
if (argument_count > 6) a2 = argument[6];
if (argument_count > 7) ss = argument[7];
if (argument_count > 8) ww = argument[8];

draw_primitive_begin(pr_trianglestrip);
for (var i=0; i<=ss; i++) {
    draw_vertex_colour(xx+lengthdir_x(rr-ww,360/ss*i),yy+lengthdir_y(rr-ww,360/ss*i),c1,a1);
    draw_vertex_colour(xx+lengthdir_x(rr,360/ss*i),yy+lengthdir_y(rr,360/ss*i),c2,a2);
}
draw_primitive_end();
