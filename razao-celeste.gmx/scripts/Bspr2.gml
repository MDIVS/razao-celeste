///Bspr2( MA, spr, index, x, y );
var x1 = argument3-sprite_get_xoffset(argument1);
var y1 = argument4-sprite_get_yoffset(argument1);
var x2 = x1+sprite_get_width(argument1);
var y2 = y1+sprite_get_height(argument1);
var alpha = draw_get_alpha(), alpha2 = alpha;
for (var i=0; i<array_length_1d(argument0); i++) {
    if (device_mouse_check_button_pressed(i,mb_left) && point_in_rectangle(device_mouse_x_to_gui(i),device_mouse_y_to_gui(i),x1,y1,x2,y2)) argument0[@i]=sprite_get_name(argument1);
    if (argument0[i]==sprite_get_name(argument1)) {
        alpha2/=2;
        if (!point_in_rectangle(device_mouse_x_to_gui(i),device_mouse_y_to_gui(i),x1,y1,x2,y2)) argument0[@i]="";
        if (!device_mouse_check_button(i,mb_left)) {argument0[@i]=""; return 1};
    }
}
draw_set_alpha(alpha2);
draw_sprite( argument1, argument2, argument3, argument4 );
draw_set_alpha(alpha);
return 0
