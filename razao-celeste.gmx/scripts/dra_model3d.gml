///dra_model3d( model, x, y, w, h, rot x, rot y, tex );
var mm = argument[0];
var xx = argument[1];
var yy = argument[2];

var surf = surface_create(argument[3],argument[4]);
surface_set_target(surf);
draw_clear_alpha(0,0);
d3d_start();
d3d_set_hidden(0);
d3d_set_culling(0);

d3d_set_projection(0,1,0,0,0,0,0,0,1);
d3d_transform_set_scaling(max(argument[3],argument[4])/2,max(argument[3],argument[4])/2,max(argument[3],argument[4])/2);
d3d_transform_add_rotation_x(argument[5]); //angulação de eixo
d3d_transform_add_rotation_z(argument[6]); //movimento de rotação
d3d_transform_add_rotation_x(90); //angulação de perspectiva

d3d_model_draw(mm,0,0,0,argument[7]);
d3d_transform_set_identity();
d3d_end();
surface_reset_target();
draw_surface(surf,xx,yy);
surface_free(surf);
