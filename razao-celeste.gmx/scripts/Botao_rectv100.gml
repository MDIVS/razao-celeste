///Botao_rectv100(x1, y1, x2, y2, value, ++ round, back c, secnd c, GUI)
var x1 = argument[0], y1 = argument[1], x2 = argument[2], y2 = argument[3], v = argument[4];
var r = 0, t = "", cb = -1, cs = draw_get_colour(), a1 = draw_get_alpha(), gui = 1;

if (argument_count > 5) r   = argument[5];
if (argument_count > 7) cb  = argument[6];
if (argument_count > 8) cs  = argument[7];
if (argument_count > 9) gui = argument[8];

if (cb != -1) draw_roundrect_colour_ext(x1,y1,x2,y2,r,r,cb,cb,0);
draw_roundrect_colour_ext(x1,y1,x2,y2,r,r,cs,cs,1);

var xx = (x1+x2)/2, w = (x2-x1)/2-4, yy = y2-w-4-(y2-y1-w*2-8)*v;
draw_primitive_begin(pr_trianglestrip);
for (var i=0; i<9; i++) {
    draw_vertex_colour(xx+lengthdir_x(w,i*45),yy+lengthdir_y(w,i*45),cs,a1);
    draw_vertex_colour(xx+lengthdir_x(w*.75,i*45),yy+lengthdir_y(w*.75,i*45),cs,a1);
}
draw_primitive_end();

for (i=0; i<array_length_1d(MA); i++) {
    if (device_mouse_check_button_pressed(i,mb_left) && DeviceMouse_rect(x1,y1,x2,y2,i,gui)) MA[i] = "B["+string(x1)+","+string(y1)+","+string(x2)+","+string(y2)+"]";
    if (MA[i] = "B["+string(x1)+","+string(y1)+","+string(x2)+","+string(y2)+"]") {
        if (!device_mouse_check_button(i,mb_left)) {
            MA[i] = "";
        }
        
        return(max(0,min(1,1-(device_mouse_y(i)*!gui+device_mouse_y_to_gui(i)*gui-y1)/(y2-y1))));
    }
}

return(v);
