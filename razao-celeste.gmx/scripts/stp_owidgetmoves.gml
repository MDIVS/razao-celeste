///stp_owidgetmoves( OWMS )
var a = argument0; //Object Widget Move System
x += (a[0]-x)/10;
y += (a[1]-y)/10;
image_xscale += (a[2]-image_xscale)/10;
image_yscale = image_xscale;
image_blend += (a[3]-image_blend)/10;

var dif = a[4]-image_alpha;
image_alpha += min(abs(dif),.05)*sign(dif);
