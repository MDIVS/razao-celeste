///Botao_rect(x1, y1, x2, y2, ++ round, txt, back colour, txt colour, GUI)
var x1 = round(argument[0]), y1 = round(argument[1]), x2 = round(argument[2]), y2 = round(argument[3]);
var r = 0, t = "", cb = -1, ct = draw_get_colour(), a1 = draw_get_alpha(), a2 = a1, gui = false;

if (argument_count > 4) r   = argument[4];
if (argument_count > 5) t   = argument[5];
if (argument_count > 6) cb  = argument[6];
if (argument_count > 7) ct  = argument[7];
if (argument_count > 8) gui = argument[8];

for (var i=0; i<array_length_1d(MA); i++) {
    if (device_mouse_check_button_pressed(i,mb_left) && DeviceMouse_rect(x1,y1,x2,y2,i,gui)) MA[i] = "B["+string(x1)+","+string(y1)+","+string(x2)+","+string(y2)+"]";
    if (MA[i] = "B["+string(x1)+","+string(y1)+","+string(x2)+","+string(y2)+"]") {
        a2 = a1/2;
        if (!DeviceMouse_rect(x1,y1,x2,y2,i,gui)) MA[i] = "";
        if (!device_mouse_check_button(i,mb_left)) {
            MA[i] = "";
            return(1);
        }
    }
}

draw_set_alpha(a2/2);
if (cb != -1) draw_roundrect_colour_ext(x1,y1,x2,y2,r,r,cb,cb,0);
draw_set_alpha(a2);
if (ct != -1) {
    if (t != "") draw_text_colour((x1+x2)/2,(y1+y2)/2,t,ct,ct,ct,ct,a2);
    draw_roundrect_colour_ext(x1,y1,x2,y2,r,r,ct,ct,1);
}
draw_set_alpha(a1);

return(0);
