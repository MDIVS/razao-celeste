#define ini_gasososview
///ini_gasososview
if !instance_exists(io_gasosos) instance_create(0,0,io_gasosos);
sy.GUI = -1;

#define dra_gasososview
cam3d_ctrlscreen(Now[4]);
cam3d_set_projection(Now[4]);
draw_set_colour(c_gray);
ss3dview_sol(695.508/4);
ss3dview_jupiter();
ss3dview_saturno();
ss3dview_urano();
ss3dview_netuno();
draw_set_colour(c_white);

Now[3]++;