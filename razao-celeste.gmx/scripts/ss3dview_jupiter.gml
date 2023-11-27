///ss3dview_jupiter( index )
var dir = 360/4331*argument[0];

d3d_primitive_begin(pr_linestrip);
for (var i=0; i<=180; i++) d3d_vertex(lengthdir_x(816,i*2),lengthdir_y(740,i*2),0);
d3d_primitive_end();

var xx = lengthdir_x(816,dir), yy = lengthdir_y(740,dir), rr = 69.911*2;
d3d_draw_ellipsoid(xx-rr,yy-rr,-rr,xx+rr,yy+rr,rr,background_get_texture(tx_jupiter),1,1,24);
