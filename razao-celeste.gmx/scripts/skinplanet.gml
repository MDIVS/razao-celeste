///skinplanet( tex, x, y, raio, rp, spdx, spdy, index )
var tx = argument0;
var xx = round(argument1);
var yy = round(argument2);
var rr = round(argument3);
var rp = max(1,round(argument4)); //número de repetições
var sx = argument5;
var _sy = argument6;
var in = argument7;

var tx1 = sx*in;
var ty1 = _sy*in;
var tx2 = tx1+rp;
var ty2 = ty1+rp;
var tw = tx2-tx1;
var th = ty2-ty1;

texture_set_repeat(true);
draw_primitive_begin_texture(pr_trianglefan,tx);

draw_vertex_texture(xx,yy,(tx1+tx2)/2,(ty1+ty2)/2);
for (var i=0; i<=24; i++) {
    draw_vertex_texture(xx+lengthdir_x(rr,360/24*i),yy+lengthdir_y(rr,360/24*i),tx1+tw*(.5+lengthdir_x(.5,360/24*i)),ty1+th*(.5+lengthdir_y(.5,360/24*i)));
}
draw_primitive_end();
