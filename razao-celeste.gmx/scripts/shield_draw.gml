///shield_draw( x, y, raio, angle, angle_width, colour, alpha pr );
var xx = argument[0];
var yy = argument[1];
var rr = argument[2];
var ww = rr*.2;
var dd = argument[3]-argument[4]/2;
var dw = argument[4];
var cc = argument[5];
var aa = argument[6];
var pr = argument[7];

draw_primitive_begin(pr_trianglestrip);
for(var i=0; i<=pr; i++) {
    draw_vertex_colour(xx+lengthdir_x(rr,dd+dw/pr*i),yy+lengthdir_y(rr,dd+dw/pr*i),cc,aa);
    draw_vertex_colour(xx+lengthdir_x(rr-ww,dd+dw/pr*i),yy+lengthdir_y(rr-ww,dd+dw/pr*i),cc,0);
};
draw_primitive_end();
