///BFase( MA, index, x, y, raio, txt, col, spr, col2 )
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

var dir = lengthdir_x(12,index);
_dc_(xx,yy,rr-sprite_get_width(argument7),rr*.1,pp,0,360);
draw_galho(argument7,0,
    xx+lengthdir_x(rr,dir-45), yy+lengthdir_y(rr,dir-45),
    xx+lengthdir_x(rr,dir+45), yy+lengthdir_y(rr,dir+45),
    xx+lengthdir_x(rr,dir), yy+lengthdir_y(rr,dir),
    argument8,argument8,pp/2,rr*.02
);

dir = 180-dir;
draw_galho(argument7,0,
    xx+lengthdir_x(rr,dir+45), yy+lengthdir_y(rr,dir+45),
    xx+lengthdir_x(rr,dir-45), yy+lengthdir_y(rr,dir-45),
    xx+lengthdir_x(rr,dir), yy+lengthdir_y(rr,dir),
    argument8,argument8,pp/2,rr*.02
);
draw_text(xx,yy,tt);
draw_set_alpha(a1);
draw_set_colour(c2);
return(0);
