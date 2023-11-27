///draw_orbita_distances( x, y, scale, a, e, perielio, po, index )
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

var xx=lengthdir_x(a,0),yy=lengthdir_y(b,0);
draw_circle(cx+xx,cy+yy,4,0);
draw_text(cx+xx,cy+yy+12,string(round(point_distance(xx,yy,sun_x,sun_y)/s))+string(" UA"));
var xx=lengthdir_x(a,180),yy=lengthdir_y(b,180);
draw_circle(cx+xx,cy+yy,4,0);
draw_text(cx+xx,cy+yy+12,string(round(point_distance(xx,yy,sun_x,sun_y)/s))+string(" UA"));
var xx=lengthdir_x(a,0),yy=lengthdir_y(b,0);
draw_text(cx+xx,cy+yy-12,"Afélio");
var xx=lengthdir_x(a,180),yy=lengthdir_y(b,180);
draw_text(cx+xx,cy+yy-12,"Periélio");
