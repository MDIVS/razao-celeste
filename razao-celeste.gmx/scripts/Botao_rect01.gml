///Botao_rect01( x1, y1, x2, y2, value, txt, back cor, txt cor, GUI)
var x1 = argument[0], y1 = argument[1], x2 = argument[2], y2 = argument[3], v = argument[4];
var t = "", cb = -1, ct = c_black, a = draw_get_alpha(), gui = false;

if (argument_count > 5) t = argument[5];
if (argument_count > 6) cb = argument[6];
if (argument_count > 7) ct = argument[7];
if (argument_count > 8) gui = argument[8];

if (cb != -1) draw_rectangle_colour(x1,y1,x2,y2,cb,cb,cb,cb,false);
if (t != "") {
    var s = min(((x2-x1)/2)/string_width(t),((y2-y1)/2)/string_height(t));
    draw_text_transformed_colour((x1+x2)/2,(y1+y2)/2,t,s,s,0,ct,ct,ct,ct,a);
}
draw_rectangle_colour(x1,y1,x2,y2,ct,ct,ct,ct,true);

for (var i=0; i<array_length_1d(MA); i+=1) {
    if (device_mouse_check_button_pressed(i,mb_left) && DeviceMouse_rect(x1,y1,x2,y2,i,gui)) {
        PlaySom(sound0,0,VSom,0);
        MA[i] = "Botao("+string(x1)+","+string(y1)+","+string(x2)+","+string(y2)+")";
    }
    if (MA[i] = "Botao("+string(x1)+","+string(y1)+","+string(x2)+","+string(y2)+")") {
        draw_set_alpha(a/2);
        draw_rectangle_colour(x1,y1,x2,y2,c_black,c_black,c_black,c_black,false);
        draw_set_alpha(1);
        
        if (!DeviceMouse_rect(x1,y1,x2,y2,i,gui)) MA[i] = "";
        if (!device_mouse_check_button(i,mb_left)) {
            PlaySom(sound1,0,VSom,0);
            MA[i] = "";
            return(!v);
        }
    }
}

var r = (y2-y1)*.4;
var xx = x1+r*2;
var _c = make_colour_rgb(255*!v,255*v,0);

for(var i=0; i<16; i+=1) {
    draw_triangle_colour(xx+lengthdir_x(r,22.5*i-11.25),(y1+y2)/2+lengthdir_y(r,22.5*i-11.25),xx+lengthdir_x(r,22.5*i+11.25),(y1+y2)/2+lengthdir_y(r,22.5*i+11.25),xx+lengthdir_x(r*.66,22.5*i-11.25),(y1+y2)/2+lengthdir_y(r*.66,22.5*i-11.25),_c,_c,_c,0);
    draw_triangle_colour(xx+lengthdir_x(r*.66,22.5*i-11.25),(y1+y2)/2+lengthdir_y(r*.66,22.5*i-11.25),xx+lengthdir_x(r,22.5*i+11.25),(y1+y2)/2+lengthdir_y(r,22.5*i+11.25),xx+lengthdir_x(r*.66,22.5*i+11.25),(y1+y2)/2+lengthdir_y(r*.66,22.5*i+11.25),_c,_c,_c,0);
};
if (!v) draw_line_width_colour(xx-r,(y1+y2)/2-r,xx+r,(y1+y2)/2+r,r/4,0,0);

return(v);
