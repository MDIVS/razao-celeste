if(keyboard_check(vk_shift)) {
    GUI = script_show;
}
draw_clear(0);
draw_background_stretched(bg_brasil,0,0,DW,DH);
draw_primitive_begin(pr_trianglefan);
draw_vertex_colour(0,0,0,1);
draw_vertex_colour(DW,0,0,1);
draw_vertex_colour(DW,DH*.5,0,0);
draw_vertex_colour(0,DH*.5,0,0);
draw_primitive_end();
draw_primitive_begin(pr_trianglefan);
draw_vertex_colour(0,DH*.5,0,0);
draw_vertex_colour(DW,DH*.5,0,0);
draw_vertex_colour(DW,DH,0,1);
draw_vertex_colour(0,DH,0,1);
draw_primitive_end();

draw_set_font(font_CooperBlack);
draw_text_colour(DW/2,32,"MDIVS",c_yellow,c_orange,c_yellow,c_yellow,image_index/room_speed/2);

draw_set_font(font_CourierNew);
draw_text_colour(DW/2,DH-24,"Toque na tela para continuar",c_white,c_white,c_silver,c_silver,image_index/room_speed/2-.5);

if (image_speed == 1) {
    var press = 0;
    if (keyboard_check(vk_anykey)) press = 1;
    for (var i=0; i<array_length_1d(MA); i++) {
        if (device_mouse_check_button_pressed(i,mb_left)) {
            image_speed = -3;
            image_index = min(image_index,room_speed*3);
            
            if (VSom > 0) PlaySom(sound0,0,VSom,0);
//            if (VMus > 0) PlaySom(BMus,0,VMus,0);
        }
    }
}

draw_set_alpha(1-image_index/room_speed/3);
draw_rectangle_colour(0,0,DW,DH,0,0,0,0,0);
draw_set_alpha(1);

if (image_index < 0) {
    image_index = 0;
    image_speed = 1;
    Now[0]=0; Now[1]=0; Now[2]=0;
    ini_open("Salvo.ini");
    GUI = scr_menu;
    var nave = ini_read_real("Player","ObjectId",-4);
    ini_close();
    
    if (nave == -4) ini_tutorial_01();
};
