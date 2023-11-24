///ctrlviewmouse()
for (var i=0; i<array_length_1d(MA); i++) {
    if (MA[i] == "view move") {
        VIEW_OBJECT = -1; 
        if (!device_mouse_check_button(i,mb_left)) MA[i] = "";
        var diference_x = VIEW_MOUSE_X-mouse_x;
        var diference_y = VIEW_MOUSE_Y-mouse_y;
        view_xview += diference_x;
        view_yview += diference_y;
        VIEW_MOUSE_X = mouse_x+diference_x;
        VIEW_MOUSE_Y = mouse_y+diference_y;
    }
    if (device_mouse_check_button_pressed(i,mb_left) && MA[i] == "") {MA[i] = "view move"; VIEW_MOUSE_X = mouse_x; VIEW_MOUSE_Y = mouse_y};
}
