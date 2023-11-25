///DeviceMouse_circle( x, y, r, device, GUI)
var i = argument[3], mx = device_mouse_x(i), my = device_mouse_y(i);
if (argument_count > 4 && argument[4]) {mx = device_mouse_x_to_gui(i); my = device_mouse_y_to_gui(i)}
return(point_in_circle(mx,my,argument[0],argument[1],argument[2]));
