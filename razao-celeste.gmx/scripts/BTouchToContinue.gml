///BTouchToContinue( PSA, x1, y1, x2, y2, txt, sep, rnd, colour1, colour2 )
/*
    PSA is Press String Array*
    ---
    
    This script draw a rounded square and check if the
    mouse has pressed and released inside the square.
    
    A MDIVS script
*/
var a=argument0,x1=argument1,y1=argument2,x2=argument3,y2=argument4,c=argument8,p=1;

for (var i=0;i<array_length_1d(a);i++) {
    if (device_mouse_check_button_pressed(i,mb_left) && point_in_rectangle(device_mouse_x_to_gui(i),device_mouse_y_to_gui(i),x1,y1,x2,y2)) a[@i] = "B5["+string(x1)+","+string(y1)+","+string(x2)+","+string(y2)+"]";
    if (a[i]=="B5["+string(x1)+","+string(y1)+","+string(x2)+","+string(y2)+"]") {p=2;
        if (!point_in_rectangle(device_mouse_x_to_gui(i),device_mouse_y_to_gui(i),x1,y1,x2,y2)) a[@i]="";
        if (!device_mouse_check_button(i,mb_left)) {a[@i]="";return(1)};
    }
}

var alpha = draw_get_alpha();
draw_set_alpha(draw_get_alpha()/p);
draw_roundrect_colour_ext(x1,y1,x2,y2,argument7,argument7,argument9,argument9,0);
draw_roundrect_colour_ext(x1,y1,x2,y2,argument7,argument7,c,c,1);
draw_set_alpha(alpha);
draw_text_ext_colour(round((x1+x2)/2),round((y1+y2)/2),argument5,argument6,(x2-x1)*.8,c,c,c,c,draw_get_alpha());
return(0);
