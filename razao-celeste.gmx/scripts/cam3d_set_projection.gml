///cam3d_set_projection( cam )
var a=argument0, lx=lengthdir_x(a[5]*a[6],a[3]), ly=lengthdir_y(a[5]*a[6],a[3]), lz=lengthdir_y(a[5]*a[6],a[4]);
d3d_start();
d3d_set_perspective(1);
d3d_set_fog(0,-1,0,0);
d3d_set_projection(a[0]+lx,a[1]+ly,a[2]+lz,a[0],a[1],a[2],0,0,1);
