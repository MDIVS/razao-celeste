///Botao_circle( x, y, r, ++ txt, back colour, txt colour, precisao, ext width, GUI)
var xx = argument[0], yy = argument[1], rr = argument[2];
var t = "", cb = -1, ct = draw_get_colour(), aa = draw_get_alpha(), p = 16, w = 1, gui = 0;

if (argument_count > 3) t   = argument[3];
if (argument_count > 4) cb  = argument[4];
if (argument_count > 5) ct  = argument[5];
if (argument_count > 6) p   = argument[6];
if (argument_count > 7) w   = argument[7];
if (argument_count > 8) gui = argument[8];


for (var i=0; i<array_length_1d(MA); i++) {
    if (DeviceMouse_circle(xx,yy,rr,i,gui) && device_mouse_check_button_pressed(i,mb_left)) MA[i] = "B["+string(xx)+","+string(yy)+"]";
    if (MA[i] = "B["+string(xx)+","+string(yy)+"]") {
        aa = draw_get_alpha()/2;
        if (!DeviceMouse_circle(xx,yy,rr,i,gui)) MA[i] = "";
        if (!device_mouse_check_button(i,mb_left)) {
            MA[i] = "";
            return(1);
        };
    }
}

if (cb != -1) DrawCircle(xx,yy,rr,cb,cb,aa,aa,p,rr);
if (t != "") {
//    var s = min((x2-x1-w*4)/string_width(t),(y2-y1-w*2)/string_height(t));
//    draw_text_transformed_colour((x1+x2)/2,(y1+y2)/2,t,s,s,0,ct,ct,ct,ct,aa);
    draw_text_colour(xx,yy,t,ct,ct,ct,ct,aa);
}
if (ct!=-1 && w>0) DrawCircle(xx,yy,rr,ct,ct,aa,aa,p,w);

return(0);
