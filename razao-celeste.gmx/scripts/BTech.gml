#define BTech
///BTech( x, y, r, t, c, p, i )
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

//draw circles
DrawCircle(xx,yy,rr*.8,c2,c2,a2,a2,pp,rr*.8);
DrawCircle(xx,yy,rr*.8,c1,c1,a2,a2,pp,rr*.066);

draw_set_alpha(a2/3*2);
DrawCircle_ext(xx,yy,rr*.9,ix,ix+45,c1,c1,ceil(pp/8),rr*.05);
DrawCircle_ext(xx,yy,rr*.9,-ix*1.3,-ix*1.3-45,c1,c1,ceil(pp/8),rr*.05);

draw_set_alpha(a2/3);
DrawCircle_ext(xx,yy,rr,120-30+ix*2,120+30+ix*2,c1,c1,ceil(pp/6),rr*.05);
DrawCircle_ext(xx,yy,rr,300-30-ix*1.7,300+30-ix*1.7,c1,c1,ceil(pp/6),rr*.05);
draw_set_alpha(a1);

draw_text_colour(xx,yy,tt,c1,c1,c1,c1,a2);
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