///bcircleaura_blue( x, y, r, txt )
var xx=argument0, yy=argument1, rr=argument2, tt = argument3;
var mx=device_mouse_x_to_gui(0), my=device_mouse_y_to_gui(0);
var pc=point_in_circle(mx,my,xx,yy,rr);
var a1=draw_get_alpha(), a2=a1;

if device_mouse_check_button_pressed(0,mb_left)&&pc MA[0]="b"+string(xx)+","+string(yy);
if MA[0]=="b"+string(xx)+","+string(yy) {
    a2/=2;
    if !pc MA[0]="";
    if !device_mouse_check_button(0,mb_left) {MA[0]="";return(1)};
}

//draw circles
DrawCircle(xx,yy,rr*.9,3151872,3151872,a2,a2,24,rr*.9);
DrawCircle(xx,yy,rr,16743936,16743936,a2/2,0,24,rr*.1);
draw_text_colour(xx,yy,tt,16743936,16743936,16743936,16743936,a1);
return(0);
