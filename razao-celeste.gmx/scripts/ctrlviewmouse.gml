///ctrlviewmouse()
if mouse_wheel_up(){
    var wadd = view_wview*.2;
    var hadd = view_hview*.2;
    view_xview-=wadd/2;
    view_yview-=hadd/2;
    view_wview+=wadd;
    view_hview+=hadd;
}
if mouse_wheel_down(){
    var wadd = -view_wview*.2;
    var hadd = -view_hview*.2;
    view_xview-=wadd/2;
    view_yview-=hadd/2;
    view_wview+=wadd;
    view_hview+=hadd;
}

if device_mouse_check_button_pressed(0,mb_left)&&MA[0]==""&&!point_in_circle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),Joys_x(JOYS),Joys_y(JOYS),Joys_r(JOYS)){
    MA[0] = "viewmove";
    VIEW_MOUSE_X = device_mouse_x(0);
    VIEW_MOUSE_Y = device_mouse_y(0);
}
    
if MA[0]=="viewmove"{
    if !device_mouse_check_button(0,mb_left){MA[0]="";exit};
    if device_mouse_check_button_pressed(1,mb_left)&&MA[1]==""&&!point_in_circle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),Joys_x(JOYS),Joys_y(JOYS),Joys_r(JOYS)){
        MA[1]="zoom";
        VIEW_MOUSE_DIS = point_distance(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),device_mouse_x_to_gui(1),device_mouse_y_to_gui(1));
    }
    if MA[1]=="zoom"{
        if !device_mouse_check_button(1,mb_left){MA[1]="";exit};
        var dif = VIEW_MOUSE_DIS-point_distance(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),device_mouse_x_to_gui(1),device_mouse_y_to_gui(1));
        view_xview+=view_wview/view_hview*dif/2;
        view_wview+=view_wview/view_hview*dif;
        view_yview+=dif/2;
        view_hview+=dif;
        VIEW_MOUSE_DIS = point_distance(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),device_mouse_x_to_gui(1),device_mouse_y_to_gui(1));
    } else {
        var diference_x = VIEW_MOUSE_X-device_mouse_x(0);
        var diference_y = VIEW_MOUSE_Y-device_mouse_y(0);
        view_xview += diference_x;
        view_yview += diference_y;
        VIEW_MOUSE_X = device_mouse_x(0)+diference_x;
        VIEW_MOUSE_Y = device_mouse_y(0)+diference_y;
    }
}
