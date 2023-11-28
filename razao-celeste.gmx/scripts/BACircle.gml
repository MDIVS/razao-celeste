///BACircle( x, y, r, t, c, p, i ); Botao Animado de Circulo
var xx=argument0, yy=argument1, rr=argument2, tt=argument3, c1=argument4;
var pp=argument5, ix=argument6, a1=draw_get_alpha(), a2=a1, c2=merge_colour(c1,0,.8);
var pc=point_in_circle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),xx,yy,rr);
if pc&&os_type==os_windows cursor_sprite=spr_cursor2;

if device_mouse_check_button_pressed(0,mb_left)&&pc MA[0]="b"+string(xx)+","+string(yy);
if MA[0]=="b"+string(xx)+","+string(yy) {
    a2/=2;
    if !pc MA[0]="";
    if !device_mouse_check_button(0,mb_left) {MA[0]=""; return(1)};
}

DrawCircle(xx,yy,rr,c2,c2,a2,a2,pp,rr);
DrawCircle(xx,yy,rr,c1,c1,a2,a2,pp,rr/10);

var s = rr*.4/min(string_width(tt),string_height(tt));
draw_text_transformed_colour(xx,yy,tt,s,s,lengthdir_x(3,ix),c1,c1,c1,c1,a2);
return(0);
