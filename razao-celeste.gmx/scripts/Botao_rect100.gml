///Botao_rect100(x1, y1, x2, y2, value, ++ round, txt, back colour, txt colour, GUI)
var x1 = argument[0], y1 = argument[1], x2 = argument[2], y2 = argument[3], v = argument[4];
var r = 0, t = "", cb = -1, ct = draw_get_colour(), a1 = draw_get_alpha(), a2 = a1, gui = false;

if (argument_count > 5) r   = argument[5];
if (argument_count > 6) t   = argument[6];
if (argument_count > 7) cb  = argument[7];
if (argument_count > 8) ct  = argument[8];
if (argument_count > 9) gui = argument[9];

if (cb != -1) draw_roundrect_colour_ext(x1,y1,x1+(x2-x1)*v,y2,r,r,cb,cb,0);

if (t != "") draw_text_colour((x1+x2)/2,(y1+y2)/2,t,ct,ct,ct,ct,a2);
draw_roundrect_colour_ext(x1,y1,x2,y2,r,r,ct,ct,1);

for (var i=0; i<array_length_1d(MA); i++) {
    if (device_mouse_check_button_pressed(i,mb_left) && DeviceMouse_rect(x1,y1,x2,y2,i,gui)) MA[i] = "B["+string(x1)+","+string(y1)+","+string(x2)+","+string(y2)+"]";
    if (MA[i] = "B["+string(x1)+","+string(y1)+","+string(x2)+","+string(y2)+"]") {
        if (!device_mouse_check_button(i,mb_left)) {
            MA[i] = "";
        }
        
        return(max(0,min(1,(device_mouse_x(i)*!gui+device_mouse_x_to_gui(i)*gui-x1)/(x2-x1))));
    }
}

return(v);
