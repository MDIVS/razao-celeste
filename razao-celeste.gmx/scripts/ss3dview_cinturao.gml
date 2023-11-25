///ss3dview_cinturao()
var dis = 300;
var xx, yy;

for (var i=0; i<=180; i++) {
    xx = lengthdir_x(300+i*2,360/30/60*Now[3]+i*5); yy = lengthdir_y(dis+i*2,360/30/60*Now[3]+i*5);
    d3d_draw_ellipsoid(xx-1,yy-1,-5,xx+1,yy+1,-4,-1,1,1,3);
    d3d_draw_ellipsoid(xx-1,yy-1,4,xx+1,yy+1,5,-1,1,1,3);
}
