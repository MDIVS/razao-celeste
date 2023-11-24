///_pesq_orbita_complete_01()
Now[0]++;
draw_background_tiled(bg_pesq,0,0);
draw_set_alpha(image_index/30);
draw_text_colour(round(DW/2),round(DH/4)-32,"Pesquisa concluída:",c_yellow,c_yellow,c_orange,c_orange,image_index/30);
dra_planet(DW/2,DH/2,DH/4,1,Now[0],0,PLANETA.TEXTURA);
draw_text(round(DW/2),round(DH*.75)+32,"Conheça a órbita de "+PLANETA.Nome+", toque na tela para continuar.");
dra_Toque(DW*.85,DH*.6,35,c_orange,c_yellow,Now[0]);
draw_set_alpha(1);

if (device_mouse_check_button_pressed(0,mb_left) && image_speed == 1) {image_speed = -1; image_index = 30};
if (image_index <= 0 && image_speed == -1) {
    GUI = _pesq_orbita_complete_02;
    Now[0]=0; Now[1]=instance_create(0,0,object0); Now[2]=_ini_path_orbital(0); Now[3]=0;
    Now[1].Perielio[0] = 0;
    Now[1].Perielio[1] = 0;
    Now[1].Perielio[2] = 0;
    Now[1].Afelio[0] = 0;
    Now[1].Afelio[1] = DW/2;
    Now[1].Afelio[2] = DH/2;
    with(Now[1]) path_start(sy.Now[2],0,0,1);
    image_speed = 1;
    PLANETA._AMAX = 0;
    PLANETA._AMIN = DW;
    PLANETA._AVAR = 0;
}
