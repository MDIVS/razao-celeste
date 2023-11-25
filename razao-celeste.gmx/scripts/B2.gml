///B2( PRESS STRING ARRAY, x, y, r, txt, colour )
/*
    This script draw a simple outside circle and check if the
    mouse has pressed and released inside the outside circle.
    
    A MDIVS script
*/
var psa=argument0;
var xx=argument1, yy=argument2, rr=argument3;
var tt=argument4, cc=argument5, a1=draw_get_alpha(), a2=a1;

for (var i=0; i<array_length_1d(MA); i++) {
    if (device_mouse_check_button_pressed(i,mb_left) && point_in_circle(device_mouse_x_to_gui(i),device_mouse_y_to_gui(i),xx,yy,rr)) psa[@i]="B2 "+string(xx)+","+string(yy);
    if (psa[i]=="B2 "+string(xx)+","+string(yy)) {a2/=2;
        if (!point_in_circle(device_mouse_x_to_gui(i),device_mouse_y_to_gui(i),xx,yy,rr)) psa[@i]="";
        if (!device_mouse_check_button(i,mb_left)) {psa[@i]="";return(1)};
    }
}

//draw circle
var ww=rr*.1, pp=ceil(pi*rr/6);
draw_primitive_begin(pr_trianglestrip);
for (var i=0; i<=pp; i++) {draw_vertex_colour(xx+lengthdir_x(rr,360/pp*i),yy+lengthdir_y(rr,360/pp*i),cc,a2);draw_vertex_colour(xx+lengthdir_x(rr-ww,360/pp*i),yy+lengthdir_y(rr-ww,360/pp*i),cc,a2)}
draw_primitive_end();
draw_text_colour(xx,yy,tt,cc,cc,cc,cc,a2);
return(0);
