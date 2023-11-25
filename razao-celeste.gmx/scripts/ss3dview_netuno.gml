///ss3dview_netuno()
var dir = 360/30799*Now[3];

d3d_primitive_begin(pr_linestrip);
for (var i=0; i<=180; i++) d3d_vertex(lengthdir_x(4540,i*2),lengthdir_y(4460,i*2),0);
d3d_primitive_end();

var xx = lengthdir_x(4540,dir), yy = lengthdir_y(4460,dir), rr = 24.622*2;
d3d_draw_ellipsoid(xx-rr,yy-rr,-rr,xx+rr,yy+rr,rr,background_get_texture(tx_netuno),1,1,24);
