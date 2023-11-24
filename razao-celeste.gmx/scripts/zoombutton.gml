///zoombutton()
var v = (view_hview-120)/880;
draw_sprite(spr_zoom,0,DW-40,DH*.9-24-(DH*.8-48)*v)

for (i=0; i<array_length_1d(MA); i++) {
    if (device_mouse_check_button_pressed(i,mb_left) && DeviceMouse_rect(DW-64,DH*.1,DW,DH*.9,i,1)) MA[i] = "scr_view";
    if (MA[i] = "scr_view") {
        if (!device_mouse_check_button(i,mb_left)) MA[i] = "";
        v = v+(max(0,min(1,1-(device_mouse_y_to_gui(i)-DH*.1)/(DH*.8)))-v)/30;
    }
}

view_hview = 120+v*880;
view_wview = DW/DH*view_hview;
