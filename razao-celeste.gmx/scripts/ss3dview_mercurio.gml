///ss3dview_mercurio( index )
var dir = 360/88*argument[0];

d3d_primitive_begin(pr_linestrip);
for (var i=0; i<=180; i++) d3d_vertex(lengthdir_x(70,i*2),lengthdir_y(46,i*2),0);
d3d_primitive_end();

var xx = lengthdir_x(70,dir), yy = lengthdir_y(46,dir), rr = 2.440*2;
d3d_draw_ellipsoid(xx-rr,yy-rr,-rr,xx+rr,yy+rr,rr,background_get_texture(tx_mercurio),1,1,24);
