///dra_planet( x, y, r, q, dir1, dir2, tex );
var xx = argument[0];
var yy = argument[1];
var rr = round(argument[2]*argument[3]);
var d1 = argument[4];
var d2 = argument[5];
var tx = argument[6];

var surf = surface_create(rr*2,rr*2);
surface_set_target(surf);
draw_clear_alpha(0,0);
d3d_start();
//d3d_transform_set_identity();
//d3d_set_hidden(0);
//d3d_set_culling(0);

d3d_set_projection(lengthdir_x(1,d1),lengthdir_y(1,d1),lengthdir_y(1,d2),0,0,0,0,0,1);
d3d_draw_ellipsoid(-rr,-rr,-rr,rr,rr,rr,tx,1,1,24);
d3d_transform_set_identity();
d3d_end();
surface_reset_target();
draw_surface_ext(surf,xx-rr,yy-rr,1/argument[3],1/argument[3],0,c_white,1);
surface_free(surf);
