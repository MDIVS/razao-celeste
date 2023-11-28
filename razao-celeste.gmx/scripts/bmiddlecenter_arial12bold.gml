///bmiddlecenter_arial12bold( x, y, txt, cor )
//Especifico para RAZAO CELESTE
var txt = argument2;
var sw = string_width(txt);
var sh = string_height(txt);

var x1  = round(argument0-sw/2-16);
var y1  = round(argument1-sh/2-16);
var x2  = round(argument0+sw/2+16);
var y2  = round(argument1+sh/2+16);

//button
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var mj = point_in_rectangle(mx,my,x1,y1,x2,y2);
var mk = device_mouse_check_button(0,mb_left);
var rtrn = 0;

if mj&&mk MA[0] = "brr"+string(x1)+","+string(y1)+","+string(x2)+","+string(y2);
if MA[0]=="brr"+string(x1)+","+string(y1)+","+string(x2)+","+string(y2) {
    draw_set_alpha(draw_get_alpha()/2);
    if !mk||!mj MA[0]="";
    if !mk rtrn = 1;
}

//draw
draw_set_colour(merge_colour(argument3,0,.8));
dra_rrect_width(x1,y1,x2,y2,min(y2-y1,x2-x1),16,8);
draw_set_colour(argument3);
dra_rrect_width(x1,y1,x2,y2,6,16,8);
draw_set_colour(c_white);

draw_set_alpha(draw_get_alpha()*2);
draw_text_colour(argument0,argument1,argument2,argument3,argument3,argument3,argument3,draw_get_alpha());
return(rtrn);
