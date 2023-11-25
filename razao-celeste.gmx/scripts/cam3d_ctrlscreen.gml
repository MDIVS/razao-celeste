///a3d_ctrlscreen( cam )
var a = argument0;

for(var i=0; i<array_length_1d(MA); i++) {
    if (device_mouse_check_button_pressed(i,mb_left) && MA[i] == "" && a[9] == -1) {
        a[@9] = i; a[@7] = device_mouse_x(i); a[@8] = device_mouse_y(i);
    };
};

if (a[9] != -1) {
    a[@3] = a[3]+(device_mouse_x(a[9])-a[7])/3; a[@4] = a[4]+(device_mouse_y(a[9])-a[8])/3;
    a[@7] = device_mouse_x(a[9]); a[@8] = device_mouse_y(a[9]);
    
    if (MA[a[9]] != "") a[@9]=-1;
    if (!device_mouse_check_button(a[9],mb_left)) a[@9]=-1;
};

a[@6]=a[6]*(1+keyboard_check_pressed(vk_up)/2)/(1+keyboard_check_pressed(vk_down)/2);
