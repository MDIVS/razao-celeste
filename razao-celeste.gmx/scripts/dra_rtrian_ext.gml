///dra_rtrian_ext( x, y, raio, angle, outline, radius, precision )
var xx, yy, rr, an, out, rad, pre;
xx  = argument0;
yy  = argument1;
rr  = abs(argument2);
an  = argument3;
out = argument4;
rad = min(argument5,rr);
pre = max(1,argument6);

var x1, y1, x2, y2, x3, y3;
x1 = xx+lengthdir_x(rr-rad,an+0);
y1 = yy+lengthdir_y(rr-rad,an+0);
x2 = xx+lengthdir_x(rr-rad,an+120);
y2 = yy+lengthdir_y(rr-rad,an+120);
x3 = xx+lengthdir_x(rr-rad,an+240);
y3 = yy+lengthdir_y(rr-rad,an+240);

var i, j;
i   = an-60;
j   = 120 / pre;

if out draw_primitive_begin(pr_linestrip);
else {draw_primitive_begin(pr_trianglefan);draw_vertex(xx,yy)};
repeat pre {
    i+=j;
    draw_vertex(x1+lengthdir_x(rad,i),y1+lengthdir_y(rad,i));
}
repeat pre {
    i += j;
    draw_vertex(x2+lengthdir_x(rad,i),y2+lengthdir_y(rad,i));
}
repeat pre {
    i += j;
    draw_vertex(x3+lengthdir_x(rad,i),y3+lengthdir_y(rad,i));
}
draw_vertex(x1+lengthdir_x(rad,i+j),y1+lengthdir_y(rad,i+j));
draw_primitive_end();
