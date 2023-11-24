///scr_buttonspr( x, y, spr, sub, blend out, blend in, GUI)
var xx = argument[0], yy = argument[1];
var spr = argument[2], sub = argument[3];
var blend = argument[4];
var gui = argument[6];
var x1 = xx-sprite_get_xoffset(spr), y1 = yy-sprite_get_yoffset(spr);
var x2 = x1+sprite_get_width(spr), y2 = y1+sprite_get_height(spr);

for (var i=0; i<array_length_1d(MA); i++) {
    if (device_mouse_check_button_pressed(i,mb_left) && point_in_rectangle(device_mouse_x(i)*(!gui)+device_mouse_x_to_gui(i)*gui,device_mouse_y(i)*(!gui)+device_mouse_y_to_gui(i)*gui,x1,y1,x2,y2)) MA[i] = "B["+string(xx)+","+string(yy)+"]";
    if (MA[i] = "B["+string(xx)+","+string(yy)+"]") {
        blend = argument[5];
        if (!point_in_rectangle(device_mouse_x(i)*(!gui)+device_mouse_x_to_gui(i)*gui,device_mouse_y(i)*(!gui)+device_mouse_y_to_gui(i)*gui,x1,y1,x2,y2)) MA[i] = "";
        if (!device_mouse_check_button(i,mb_left)) {
            MA[i] = "";
            return(1);
        }
    }
}
draw_sprite_ext(spr,sub,xx,yy,1,1,0,blend,draw_get_alpha());
return(0);
