///Botao_txt( x, y, vh, vv, txt, round, back colour, txt colour, GUI)
var txt = argument[4], w = string_width(txt), h = string_height(txt), m = string_width("-");
var x1,y1,x2,y2,r = argument[5];

if (argument[2] == 0) { x1 = argument[0]-w/2-m-r/3; x2 = argument[0]+w/2+m+r/3 }
else if (argument[2] == 1) { x1 = argument[0]-w-m*2-r/1.5; x2 = argument[0]}
else { x1 = argument[0]; x2 = argument[0]+w+m*2+r/1.5 }

if (argument[3] == 0) { y1 = argument[1]-h/2-m; y2 = argument[1]+h/2-m }
else if (argument[3] == 1) { y1 = argument[1]-h-m*2; y2 = argument[1]}
else { y1 = argument[1]; y2 = argument[1]+h+m*2 }

var cb = argument[6], ct = argument[7], a1 = draw_get_alpha(), a2 = a1, gui = argument[8];

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

draw_set_alpha(a2);
if (cb != -1) draw_roundrect_colour_ext(x1,y1,x2,y2,r,r,cb,cb,0);
if (ct != -1) {
    if (txt != "") draw_text_colour((x1+x2)/2,(y1+y2)/2,txt,ct,ct,ct,ct,a2);
    draw_roundrect_colour_ext(x1,y1,x2,y2,r,r,ct,ct,1);
}
draw_set_alpha(a1);

return(0);
