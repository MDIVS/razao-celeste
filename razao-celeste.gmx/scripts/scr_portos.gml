///scr_portos( Port Sy )
var ptsy = argument[0];
if (!is_array(ptsy)) exit;
for (var i=0; i<array_length_1d(ptsy); i++) {
    var p, xx, yy, l, n = 0, nn, ii, iii = 0;
    nn[0] = -4;
    
    p = ptsy[i];
    xx = x+lengthdir_x(p[0],p[1]+image_angle);
    yy = y+lengthdir_y(p[0],p[1]+image_angle);
    
    n = p[3];
    
    for (ii=0; ii<array_length_1d(n); ii++) {
        if (n[ii] != -4 && instance_exists(n[ii])) {nn[iii] = n[ii]; iii++};
    }
    n = nn;
    if (array_length_1d(n) < 3 && p[4] == 0) {
        var ic = instance_create(xx,yy,p[5]);
        ic.Mae = id;
        ic.direction = irandom(360);
        n[array_length_1d(n)] = ic;
        p[@ 4] = 300;
    }
    p[@ 3] = n;
    p[@ 4] = max(0,p[4]-(array_length_1d(n)<3));
    
//    ii = (1-p[4]/300)*(array_length_1d(n)<3);
    ii = 1-p[4]/300;
    DrawCircle(xx,yy,3,c_maroon,c_maroon,image_alpha,image_alpha,8,3);
    DrawCircle(xx,yy,3+4*ii,c_aqua,0,image_alpha,0,8,4*ii);
}
