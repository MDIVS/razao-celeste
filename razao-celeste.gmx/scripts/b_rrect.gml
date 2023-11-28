///b_rrect( x1, y1, x2, y2, width, radius, precision, MA )

/*  This needs a 1d array index "MA" to check the press button index :)
    Made by MDIVS [<o>] */

var x1, y1, x2, y2, ww, rad, pre, i, j, x1r, x2r, y1r, y2r;
x1  = argument0;
y1  = argument1;
x2  = argument2;
y2  = argument3;
ww  = argument4;
rad = min(argument5,abs(x1-x2)/2,abs(y1-y2)/2);
pre = max(1,argument6);

i   = 0;
j   = 90 / pre;
x1r = x1 + rad;
x2r = x2 - rad;
y1r = y1 + rad;
y2r = y2 - rad;

//button
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var mj = point_in_rectangle(mx,my,x1,y1,x2,y2);
var mk = device_mouse_check_button(0,mb_left);
var rtrn = 0;

if mj&&mk argument7[@0] = "brr"+string(x1)+","+string(y1)+","+string(x2)+","+string(y2);
if argument7[0]=="brr"+string(x1)+","+string(y1)+","+string(x2)+","+string(y2) {
    draw_set_alpha(draw_get_alpha()/2);
    if !mk||!mj argument7[@0]="";
    if !mk rtrn = 1;
}

//draw
draw_primitive_begin(pr_trianglestrip);
draw_vertex(x2,y2r);
draw_vertex(x2-ww,y2r);
draw_vertex(x2,y1r);
draw_vertex(x2-ww,y1r);

var xx, yy;
repeat pre {
    i += j;
    xx = x2r+lengthdir_x(rad,i);
    yy = y1r+lengthdir_y(rad,i);
    draw_vertex(xx,yy);
    xx -= lengthdir_x(ww,i);
    yy -= lengthdir_y(ww,i);
    draw_vertex(xx,yy);
}
draw_vertex(x1r,y1);
draw_vertex(x1r,y1+ww);
repeat pre {
    i += j;
    xx = x1r+lengthdir_x(rad,i);
    yy = y1r+lengthdir_y(rad,i);
    draw_vertex(xx,yy);
    xx -= lengthdir_x(ww,i);
    yy -= lengthdir_y(ww,i);
    draw_vertex(xx,yy);
}
draw_vertex(x1,y2r);
draw_vertex(x1+ww,y2r);
repeat pre {
    i += j;
    xx = x1r+lengthdir_x(rad,i);
    yy = y2r+lengthdir_y(rad,i);
    draw_vertex(xx,yy);
    xx -= lengthdir_x(ww,i);
    yy -= lengthdir_y(ww,i);
    draw_vertex(xx,yy);
}
draw_vertex(x2r,y2);
draw_vertex(x2r,y2-ww);
repeat pre {
    i += j;
    xx = x2r+lengthdir_x(rad,i);
    yy = y2r+lengthdir_y(rad,i);
    draw_vertex(xx,yy);
    xx -= lengthdir_x(ww,i);
    yy -= lengthdir_y(ww,i);
    draw_vertex(xx,yy);
}
draw_vertex(x2-ww,y2r);
draw_primitive_end();

draw_set_alpha(draw_get_alpha()*2);
return(rtrn);

