///BPoliSpr( MA, spr, img, rep, index, x, y, raio, txt, col )
/*
    This script draw a counturned circle and check if the
    mouse has pressed and released inside the counturned circle.
    In this script, the text is drawned in one more down inside the cirle.
    
    A MDIVS script
*/
var psa=argument0, index=argument4;
var xx=argument5, yy=argument6, rr=argument7;
var tt=argument8, c1=argument9, a1=draw_get_alpha(), a2=a1;

for (var i=0; i<array_length_1d(MA); i++) {
    if (device_mouse_check_button_pressed(i,mb_left) && point_in_circle(device_mouse_x_to_gui(i),device_mouse_y_to_gui(i),xx,yy,rr)) psa[@i]="B2 "+string(xx)+","+string(yy);
    if (psa[i]=="B2 "+string(xx)+","+string(yy)) {a2/=2;
        if (!point_in_circle(device_mouse_x_to_gui(i),device_mouse_y_to_gui(i),xx,yy,rr)) psa[@i]="";
        if (!device_mouse_check_button(i,mb_left)) {psa[@i]="";return(1)};
    }
}

//draw circles
for(var i=0;i<argument3;i++)draw_sprite_ext(argument1,argument2,xx+lengthdir_x(rr,360/argument3*i+argument4),yy+lengthdir_y(rr,360/argument3*i+argument4),1,1,360/argument3*i+argument4,c1,draw_get_alpha());
draw_text_colour(xx,yy,tt,c1,c1,c1,c1,draw_get_alpha());
return(0);
