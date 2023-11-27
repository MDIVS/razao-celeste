///array_remove_element( array, index )
var a = argument0;
var b = argument1;
var newa;
for (var i=0; i<b; i++) newa[i] = a[i];
for (var i=b; i<array_length_1d(a)-1; i++) newa[i] = a[i+1];
return(newa);
