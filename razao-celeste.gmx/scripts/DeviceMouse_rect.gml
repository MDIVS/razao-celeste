///DeviceMouse_rect(x1, y1, x2, y2, device, GUI)
var i = argument[4], mx = device_mouse_x(i), my = device_mouse_y(i);
if (argument_count > 5 && argument[5]) {mx = device_mouse_x_to_gui(i); my = device_mouse_y_to_gui(i)}
return(point_in_rectangle(mx,my,argument[0],argument[1],argument[2],argument[3]));
