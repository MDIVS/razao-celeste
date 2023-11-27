///BPlanet( PRESS STRING ARRAY, x, y, r, eixo, rot, tex )
/*
    This script draw a planet and check if the
    mouse has pressed and released inside his.
    
    A MDIVS script
*/
var psa=argument0;
var xx=argument1, yy=argument2, rr=argument3;
var eixo=argument4, rot=argument5, tex=argument6, a1=draw_get_alpha(), a2=a1;

for (var i=0; i<array_length_1d(MA); i++) {
    if (device_mouse_check_button_pressed(i,mb_left) && point_in_circle(device_mouse_x_to_gui(i),device_mouse_y_to_gui(i),xx,yy,rr)) psa[@i]="BPlanet "+string(xx)+","+string(yy);
    if (psa[i]=="BPlanet "+string(xx)+","+string(yy)) {a2/=2;
        if (!point_in_circle(device_mouse_x_to_gui(i),device_mouse_y_to_gui(i),xx,yy,rr)) psa[@i]="";
        if (!device_mouse_check_button(i,mb_left)) {psa[@i]="";return(1)};
    }
}

draw_set_alpha(a2);
dra_planet(xx,yy,rr,1,rot,eixo,tex);
draw_set_alpha(a1);
return(0);
