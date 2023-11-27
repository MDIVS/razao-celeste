///scr_BtPrplsr( button id )
var a = argument0;

for(var i=0; i<array_length_1d(MA); i++) {
    if device_mouse_check_button_pressed(i,mb_left) && point_in_circle(device_mouse_x_to_gui(i),device_mouse_y_to_gui(i),a[0],a[1],a[2]) a[@3]=i;
};

draw_sprite_ext(spr_propbutton,0,a[0],a[1],1,1,0,-1,draw_get_alpha()-(a[3]!=-1)/2);

if keyboard_check(vk_numpad1)||keyboard_check(ord("J"))||keyboard_check(vk_space) return(1);

if a[3]!=-1 {
    if !device_mouse_check_button(a[3],mb_left) a[@3]=-1;
    return(1);
} else return(0);
