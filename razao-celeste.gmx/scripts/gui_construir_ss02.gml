///gui_construir_ss02()
Now[0]++;
draw_background_tiled(bg_pesq,0,0);
draw_set_halign(fa_left);

draw_sprite(glw_ss02,0,DW/4-55,DH/2);
draw_sprite(spr_ss02,0,DW/4-55,DH/2);
draw_sprite(glw_ss02,0,DW/2-55,DH/2);
draw_sprite(spr_ss02,0,DW/2-55,DH/2);
draw_sprite(glw_ss02,0,DW*.75-55,DH/2);
draw_sprite(spr_ss02,0,DW*.75-55,DH/2);

draw_sprite(spr_coin,0,DW/4+8,DH/2-20);
draw_sprite(spr_coin,0,DW/4+8,DH/2);
draw_sprite(spr_coin,0,DW/4+8,DH/2+20);
draw_sprite(spr_coin,0,DW/2+8,DH/2-20);
draw_sprite(spr_coin,0,DW/2+8,DH/2);
draw_sprite(spr_coin,0,DW/2+8,DH/2+20);
draw_sprite(spr_coin,0,DW*.75+8,DH/2-20);
draw_sprite(spr_coin,0,DW*.75+8,DH/2);
draw_sprite(spr_coin,0,DW*.75+8,DH/2+20);

draw_text(DW/4+20,DH/2-20,"300");
draw_text(DW/4+20,DH/2,"2");
draw_text(DW/4+20,DH/2+20,"6");
draw_text(DW/2+20,DH/2-20,"300");
draw_text(DW/2+20,DH/2,"2");
draw_text(DW/2+20,DH/2+20,"6");
draw_text(DW*.75+20,DH/2-20,"300");
draw_text(DW*.75+20,DH/2,"2");
draw_text(DW*.75+20,DH/2+20,"6");

//draw_rectangle(DW/4-120,DH/2-32,DW/4+64,DH/2+32,1);

if (device_mouse_check_button_pressed(0,mb_left)) {
    if (point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),DW/4-120,DH/2-32,DW/4+64,DH/2+32)) {
        PlaySom(sound1,0,VSom,0);
    }
}

draw_set_halign(fa_center);

if (Botao_rect(DW*.48-110,DH-36,DW*.48,DH-12,32,"Voltar",0,c_fuchsia,1)) {
    Now[0]=0;
    GUI = gui_construir_naves;
    PlaySom(sound2,0,VSom,0);
}

if (Botao_rect(DW*.52,DH-36,DW*.52+150,DH-12,32,"Construir",0,c_fuchsia,1)) {
    DRA=scr_sydra; GUI=scr_sygui;
    Now[0]=0;
    CNTR[0]=_cntr_ss02; CNTR[1]=0; CNTR[2]=room_speed*15;
    PlaySom(sound2,0,VSom,0);
}
