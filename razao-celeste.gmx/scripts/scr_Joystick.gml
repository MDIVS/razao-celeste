///scr_Joystick( joystick id )
var j = argument0;

for(var i=0; i<array_length_1d(MA); i++) {
    if (device_mouse_check_button_pressed(i,mb_left) && point_distance(j[0],j[1],device_mouse_x_to_gui(i),device_mouse_y_to_gui(i)) <= j[2]) j[@ 6] = i;
};

if (j[6] != -1) {
    j[@ 7] = point_direction(j[0],j[1],device_mouse_x_to_gui(j[6]),device_mouse_y_to_gui(j[6]));
    j[@ 8] = min(point_distance(j[0],j[1],device_mouse_x_to_gui(j[6]),device_mouse_y_to_gui(j[6])),j[2])/j[2];
    if (!device_mouse_check_button(j[6],mb_left)) j[@ 6] = -1;
} else if keyboard_check(ord("A"))||keyboard_check(vk_left) {
    j[@ 7] = 180;
    j[@ 8] = min(1,j[8]+1/7);
} else if keyboard_check(ord("D"))||keyboard_check(vk_right) {
    j[@ 7] = 0;
    j[@ 8] = min(1,j[8]+1/7);
} else if keyboard_check(ord("W"))||keyboard_check(vk_up) {
    j[@ 7] = 90;
    j[@ 8] = min(1,j[8]+1/7);
} else if keyboard_check(ord("S"))||keyboard_check(vk_down) {
    j[@ 7] = 270;
    j[@ 8] = min(1,j[8]+1/7);
} else {
    j[@ 8] = max(0,j[8]-1/7);
};

var a = draw_get_alpha();
DrawCircle(j[0],j[1],j[2],j[4],j[4],j[5],j[5],24,j[2]/2);
DrawCircle(j[0],j[1],j[2]/2,j[3],j[3],j[5],j[5],24,j[2]/2);
DrawCircle(j[0],j[1],j[2],j[4],j[4],1,1,24,j[2]*.05);
DrawCircle(j[0],j[1],j[2]/2,j[3],j[3],1,1,24,j[2]*.05);

draw_set_font(arial8);
draw_text(round(j[0]),round(j[1]+j[2]*.35),"frear");
draw_text(round(j[0]),round(j[1]+j[2]*.65),"acelerar");
draw_set_font(arialbold12);

var mx = j[0]+lengthdir_x(j[8]*j[2],j[7]);
var my = j[1]+lengthdir_y(j[8]*j[2],j[7]);

if j[8]<.5
    draw_roundrect_colour_ext(mx-j[2]*.2,my-j[2]*.2,mx+j[2]*.2,my+j[2]*.2,j[2]*.1,j[2]*.1,j[3],j[3],0);
else
    DrawCircle(mx,my,j[2]/3,j[4],j[4],1,1,16,j[2]/3);
