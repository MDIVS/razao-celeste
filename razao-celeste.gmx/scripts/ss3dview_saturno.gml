///ss3dview_saturno()
var dir = 360/10759*Now[3];

d3d_primitive_begin(pr_linestrip);
for (var i=0; i<=180; i++) d3d_vertex(lengthdir_x(1513,i*2),lengthdir_y(1353,i*2),0);
d3d_primitive_end();

var xx = lengthdir_x(1513,dir), yy = lengthdir_y(1353,dir), rr = 58.232*2;
d3d_draw_ellipsoid(xx-rr,yy-rr,-rr,xx+rr,yy+rr,rr,background_get_texture(tx_saturno),1,1,24);
