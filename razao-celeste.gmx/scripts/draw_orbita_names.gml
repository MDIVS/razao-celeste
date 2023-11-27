///draw_orbita_names( x, y, scale, a, e, perielio, po, index, txt foco, txt objeto )
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

var dir=360/po*argument7;
var xx=lengthdir_x(a,dir),yy=lengthdir_y(b,dir);

draw_text(cx+sun_x,cy+sun_y+20,argument8);
draw_text(cx+xx,cy+yy+20,argument9);
