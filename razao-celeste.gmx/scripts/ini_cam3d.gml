///ini_cam3d( x, y, z, rz, ry, sep, zoom )
var a;
a[0]=0; //x
a[1]=0; //y
a[2]=0; //z
a[3]=0; //rz
a[4]=0; //ry
a[5]=10; //sep
a[6]=1; //zoom
a[7]=0; //mux
a[8]=0; //muy
a[9]=-1; //device
for (var i=0; i<argument_count; i++) a[i]=argument[i];
return(a);
