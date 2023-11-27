///array2d_remove_element( array2d, index )
var a = argument0;
var b = argument1;
var newa;

for (var yy=0; yy<b; yy++) {
    for (var xx=0; xx<array_length_2d(a,yy); xx++) newa[yy,xx] = a[yy,xx];
}

for (var yy=b; yy<array_height_2d(a)-1; yy++) {
    for (var xx=0; xx<array_length_2d(a,yy); xx++) newa[yy,xx] = a[yy+1,xx];
}

return(newa);
