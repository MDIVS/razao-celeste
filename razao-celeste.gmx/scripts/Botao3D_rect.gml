///Botao3D_rect( x1, y1, x2, y2, quality, model, tex, dist, rot x, rot y, colour )
var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];
var qq = argument[4];
var mm = argument[5];
var tx = argument[6];
var dd = argument[7];

var surf = surface_create((x2-x1)*qq,(y2-y1)*qq);
surface_set_target(surf);
d3d_start();
d3d_set_projection(lengthdir_x(dd,argument[8]),lengthdir_y(dd,argument[8]),lengthdir_y(dd,argument[9]),0,0,0,0,0,1);
d3d_model_draw(mm,0,0,0,tx);
d3d_end();
surface_reset_target();
draw_surface_ext(surf,x1,y1,1/qq,1/qq,0,argument[10],1);
