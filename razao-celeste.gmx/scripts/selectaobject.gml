///selectaobject()
if (device_mouse_check_button_pressed(0,mb_left)) {
    var a = instance_position(mouse_x,mouse_y,obj_nave);
    if (a != -4) {
        VIEW_OBJECT = a;
        if (MA[0] == "view move") MA[0] = "";
    };
}
