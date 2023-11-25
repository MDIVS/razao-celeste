///ss3dview_urano()
var dir = 360/30799*Now[3];

d3d_primitive_begin(pr_linestrip);
for (var i=0; i<=180; i++) d3d_vertex(lengthdir_x(3004,i*2),lengthdir_y(2748,i*2),0);
d3d_primitive_end();

var xx = lengthdir_x(3004,dir), yy = lengthdir_y(2748,dir), rr = 25.362*2;
d3d_draw_ellipsoid(xx-rr,yy-rr,-rr,xx+rr,yy+rr,rr,background_get_texture(tx_urano),1,1,24);
