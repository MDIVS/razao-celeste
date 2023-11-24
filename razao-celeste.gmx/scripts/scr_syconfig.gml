///scr_syconfig()
var xx = DW-20, yy = 20, r = 16;
draw_sprite_ext(spr_engrenagem,0,xx,yy,1,1,image_index*5,c_white,draw_get_alpha());

if (Title == "" && device_mouse_check_button_pressed(0,mb_left) && point_distance(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),xx,yy) <= r) {
    Now[0] = GUI;
    GUI = gui_config;
    PlaySom(sound1,0,VSom,0);
}
