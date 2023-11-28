///dra_rrect_width( x1, y1, x2, y2, width, radius, precision )
var x1, y1, x2, y2, ww, rad, pre, i, j, x1r, x2r, y1r, y2r;
x1  = argument0;
y1  = argument1;
x2  = argument2;
y2  = argument3;
ww  = argument4;
rad = argument5;
pre = max(1,argument6);

i   = 0;
j   = 90 / pre;
x1r = x1 + rad;
x2r = x2 - rad;
y1r = y1 + rad;
y2r = y2 - rad;

draw_primitive_begin(pr_trianglestrip);
draw_vertex(x2,y2r);
draw_vertex(x2-ww,y2r);
draw_vertex(x2,y1r);
draw_vertex(x2-ww,y1r);

var xx, yy;
repeat pre {
    i += j;
    xx = x2r+lengthdir_x(rad,i);
    yy = y1r+lengthdir_y(rad,i);
    draw_vertex(xx,yy);
    xx -= lengthdir_x(ww,i);
    yy -= lengthdir_y(ww,i);
    draw_vertex(xx,yy);
}
draw_vertex(x1r,y1);
draw_vertex(x1r,y1+ww);
repeat pre {
    i += j;
    xx = x1r+lengthdir_x(rad,i);
    yy = y1r+lengthdir_y(rad,i);
    draw_vertex(xx,yy);
    xx -= lengthdir_x(ww,i);
    yy -= lengthdir_y(ww,i);
    draw_vertex(xx,yy);
}
draw_vertex(x1,y2r);
draw_vertex(x1+ww,y2r);
repeat pre {
    i += j;
    xx = x1r+lengthdir_x(rad,i);
    yy = y2r+lengthdir_y(rad,i);
    draw_vertex(xx,yy);
    xx -= lengthdir_x(ww,i);
    yy -= lengthdir_y(ww,i);
    draw_vertex(xx,yy);
}
draw_vertex(x2r,y2);
draw_vertex(x2r,y2-ww);
repeat pre {
    i += j;
    xx = x2r+lengthdir_x(rad,i);
    yy = y2r+lengthdir_y(rad,i);
    draw_vertex(xx,yy);
    xx -= lengthdir_x(ww,i);
    yy -= lengthdir_y(ww,i);
    draw_vertex(xx,yy);
}
draw_vertex(x2-ww,y2r);
draw_primitive_end();
