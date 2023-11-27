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
d3d_set_projection_ortho(-rr,-rr,rr*2,rr*2,0);
d3d_transform_set_scaling(rr,rr,rr);
d3d_transform_add_rotation_z(d1); //movimento de rotação
d3d_transform_add_rotation_y(d2); //angulação de eixo
d3d_transform_add_rotation_x(90); //angulação de perspectiva
d3d_model_draw(M3D_ESFERA,0,0,0,tx);
d3d_transform_set_identity();
d3d_end();
surface_reset_target();
draw_surface(surf,xx-rr,yy-rr);
surface_free(surf);
