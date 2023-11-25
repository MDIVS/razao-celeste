///scr_Joystick( joystick id )
var j = argument0;

for(var i=0; i<array_length_1d(MA); i++) {
    if (device_mouse_check_button_pressed(i,mb_left) && point_distance(j[0],j[1],device_mouse_x_to_gui(i),device_mouse_y_to_gui(i)) <= j[2]) j[@ 6] = i;
};

if (j[6] != -1) {
    j[@ 7] = point_direction(j[0],j[1],device_mouse_x_to_gui(j[6]),device_mouse_y_to_gui(j[6]));
    j[@ 8] = min(point_distance(j[0],j[1],device_mouse_x_to_gui(j[6]),device_mouse_y_to_gui(j[6])),j[2])/j[2];
    if (!device_mouse_check_button(j[6],mb_left)) j[@ 6] = -1;
} else {
    j[@ 8] = 0;
};

var a = draw_get_alpha();
DrawCircle(j[0],j[1],j[2],j[4],j[4],j[5],j[5],24,j[2]);
DrawCircle(j[0],j[1],j[2],j[3],j[3],1,1,24,j[2]*.1);
DrawCircle(j[0]+lengthdir_x(j[8]*j[2],j[7]),j[1]+lengthdir_y(j[8]*j[2],j[7]),j[2]/3,j[3],j[3],1,1,16,j[2]/3);
