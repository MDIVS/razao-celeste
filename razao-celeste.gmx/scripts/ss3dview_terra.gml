///ss3dview_terra( index )
var dir = 360/365*argument[0];

d3d_primitive_begin(pr_linestrip);
for (var i=0; i<=180; i++) d3d_vertex(lengthdir_x(152,i*2),lengthdir_y(147,i*2),0);
d3d_primitive_end();

var xx = lengthdir_x(152,dir), yy = lengthdir_y(147,dir), rr = 6.378*2;
d3d_draw_ellipsoid(xx-rr,yy-rr,-rr,xx+rr,yy+rr,rr,background_get_texture(tx_terra),1,1,24);
