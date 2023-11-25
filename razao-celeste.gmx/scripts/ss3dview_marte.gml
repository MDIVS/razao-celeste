///ss3dview_marte()
var dir = 360/687*Now[3];

d3d_primitive_begin(pr_linestrip);
for (var i=0; i<=180; i++) d3d_vertex(lengthdir_x(228,i*2),lengthdir_y(207,i*2),0);
d3d_primitive_end();

var xx = lengthdir_x(228,dir), yy = lengthdir_y(207,dir), rr = 3.397*2;
d3d_draw_ellipsoid(xx-rr,yy-rr,-rr,xx+rr,yy+rr,rr,background_get_texture(tx_marte),1,1,24);
