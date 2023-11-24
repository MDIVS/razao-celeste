///Botao_ellipse( x1, y1, x2, y2, ++ txt, back colour, txt colour, precisao, ext width, GUI)
var x1 = argument[0], y1 = argument[1], x2 = argument[2], y2 = argument[3];
var t = "", cb = -1, ct = draw_get_colour(), a1 = draw_get_alpha(), a2 = a1, p = 16, w = 1, gui = false;

if (argument_count > 4) t   = argument[4];
if (argument_count > 5) cb  = argument[5];
if (argument_count > 6) ct  = argument[6];
if (argument_count > 7) p   = argument[7];
if (argument_count > 8) w   = argument[8];
if (argument_count > 9) gui = argument[9];


for (var i=0; i<array_length_1d(MA); i+=1) {
    if (DeviceMouse_rect(x1,y1,x2,y2,i,gui) && device_mouse_check_button_pressed(i,mb_left)) global.MA[i] = "B["+string(x1)+","+string(y1)+","+string(x2)+","+string(y2)+"]";
    if (MA[i] = "B["+string(x1)+","+string(y1)+","+string(x2)+","+string(y2)+"]") {
        a2 = a1/2;
        if (!DeviceMouse_rect(x1,y1,x2,y2,i,gui)) MA[i] = "";
        if (!device_mouse_check_button(i,mb_left)) {
            global.MA[i] = "";
            return(1);
        };
    }
}

draw_set_alpha(a2);
if (cb != -1) {
    for(i=-180/p; i<360-180/p; i+=360/p) {
        draw_triangle_colour(
            (x1+x2)/2+lengthdir_x((x2-x1)/2,i),(y1+y2)/2+lengthdir_y((y2-y1)/2,i),
            (x1+x2)/2+lengthdir_x((x2-x1)/2,i+360/p),(y1+y2)/2+lengthdir_y((y2-y1)/2,i+360/p),
            (x1+x2)/2,(y1+y2)/2,cb,cb,cb,0
        );
    }
}
if (t != "") {
    var s = min((x2-x1-w*4)/string_width(t),(y2-y1-w*2)/string_height(t));
    draw_text_transformed_colour((x1+x2)/2,(y1+y2)/2,t,s,s,0,ct,ct,ct,ct,a2);
}
if (ct != -1) {
    draw_primitive_begin(pr_trianglestrip);
    for(i=-180/p; i<=360-180/p; i+=360/p) {
        draw_vertex_colour((x1+x2)/2+lengthdir_x((x2-x1)/2,i),(y1+y2)/2+lengthdir_y((y2-y1)/2,i),ct,a2)
        draw_vertex_colour((x1+x2)/2+lengthdir_x((x2-x1)/2-w,i),(y1+y2)/2+lengthdir_y((y2-y1)/2-w,i),ct,a2);
    }
    draw_primitive_end();
}
draw_set_alpha(a1);

return(0);
