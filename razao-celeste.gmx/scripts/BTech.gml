#define BTech
///BTech( MA, index, x, y, raio, txt, col )
/*
    This script draw a counturned circle and check if the
    mouse has pressed and released inside the counturned circle.
    In this script, the text is drawned in one more down inside the cirle.
    
    A MDIVS script
*/
var psa=argument0, index=argument1;
var xx=argument2, yy=argument3, rr=argument4;
var tt=argument5, c1=argument6, a1=draw_get_alpha(), a2=a1;

for (var i=0; i<array_length_1d(MA); i++) {
    if (device_mouse_check_button_pressed(i,mb_left) && point_in_circle(device_mouse_x_to_gui(i),device_mouse_y_to_gui(i),xx,yy,rr)) psa[@i]="B2 "+string(xx)+","+string(yy);
    if (psa[i]=="B2 "+string(xx)+","+string(yy)) {a2/=2;
        if (!point_in_circle(device_mouse_x_to_gui(i),device_mouse_y_to_gui(i),xx,yy,rr)) psa[@i]="";
        if (!device_mouse_check_button(i,mb_left)) {psa[@i]="";return(1)};
    }
}

//draw circles
var pp=ceil(pi*rr/6),c2=draw_get_colour();
draw_set_colour(c1);
draw_set_alpha(a2);
_dc_(xx,yy,rr,rr*.1,pp/4,index,index+90);
_dc_(xx,yy,rr*.975,rr*.05,pp/4,90-index,180-index);
_dc_(xx,yy,rr*.8,rr*.1,pp,0,360);
draw_text(xx,yy,tt);
draw_set_alpha(a1);
draw_set_colour(c2);
return(0);

#define _dc_
///_dc_( x, y, raio, width, prec, ang1, ang2 )
var xx = argument0;
var yy = argument1;
var rr = argument2;
var ww = argument3;
var pp = ceil(argument4);
var a1 = argument5;
var a2 = argument6-a1;

draw_primitive_begin(pr_trianglestrip);
for(var i=0;i<=pp;i++){
    draw_vertex(xx+lengthdir_x(rr,a1+a2/pp*i),yy+lengthdir_y(rr,a1+a2/pp*i));
    draw_vertex(xx+lengthdir_x(rr-ww,a1+a2/pp*i),yy+lengthdir_y(rr-ww,a1+a2/pp*i));
};
draw_primitive_end();