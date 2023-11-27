///draw_orbita_planets( x, y, scale, a, e, perielio, po, index, ec1, ec2, oc1, oc2 )
//valores do plano
var cx = argument0;
var cy = argument1;

//valores da orbita
var s = argument2; //scale
var a = argument3*s;
var b = a*(1-argument4);
var f1 = -a+argument5*s;
var po = argument6; //período orbital

var sun_x = f1;
var sun_y = 0;

DrawCircle(cx+sun_x,cy+sun_y,12,argument8,argument8,1,1,24,16);
DrawCircle(cx+sun_x,cy+sun_y,12,argument9,argument9,1,1,24,3);

var dir=360/po*argument7;
var xx=lengthdir_x(a,dir),yy=lengthdir_y(b,dir);

DrawCircle(cx+xx,cy+yy,12,argument10,argument10,1,1,24,16);
DrawCircle(cx+xx,cy+yy,12,argument11,argument11,1,1,24,3);
