///ss3dview_venus()
var dir = 360/224*Now[3];

d3d_primitive_begin(pr_linestrip);
for (var i=0; i<=180; i++) d3d_vertex(lengthdir_x(108,i*2),lengthdir_y(107,i*2),0);
d3d_primitive_end();

var xx = lengthdir_x(108,dir), yy = lengthdir_y(107,dir), rr = 6.052*2;
d3d_draw_ellipsoid(xx-rr,yy-rr,-rr,xx+rr,yy+rr,rr,background_get_texture(tx_venus),1,1,24);
