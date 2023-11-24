///gui_pesq_satelites()
Now[0]++;
draw_background_tiled(bg_pesq,0,0);

draw_set_halign(fa_left);
//draw planet
DrawCircle(DW/2,DH/2,DH*.05,c_silver,c_silver,image_alpha,image_alpha,16,DH*.05);
DrawCircle(DW/2,DH/2,DH*.05,c_orange,c_orange,image_alpha,image_alpha,16,4);
draw_text(DW/2+DH*.06,DH/2,string_upper(PLANETA.Nome));

//draw satelite
DrawCircle(Now[1].x,Now[1].y,DH*.02,c_silver,c_silver,image_alpha,image_alpha,16,DH*.02);
DrawCircle(Now[1].x,Now[1].y,DH*.02,c_orange,c_orange,image_alpha,image_alpha,16,2);
draw_text(Now[1].x+DH*.03,Now[1].y,"SATÉLITE 1");

DrawCircle(Now[2].x,Now[2].y,DH*.02,c_silver,c_silver,image_alpha,image_alpha,16,DH*.02);
DrawCircle(Now[2].x,Now[2].y,DH*.02,c_orange,c_orange,image_alpha,image_alpha,16,2);
draw_text(Now[2].x+DH*.03,Now[2].y,"SATÉLITE 2");
draw_set_halign(fa_center);

var t = "Estude os satélites do planeta "+PLANETA.Nome+" em#15 segundos e leve 200 moedas de brinde!";
draw_text(round(DW/2),round(DH*.8),t);

if (Botao_rect(DW*.48-110,DH-48,DW*.48,DH-16,32,"Voltar",0,c_fuchsia,1)) {
    with(Now[1]) {path_delete(Path); instance_destroy()};
    with(Now[2]) {path_delete(Path); instance_destroy()};
    Now[0]=0; Now[1]=0; Now[2]=0;
    GUI = scr_pesquisar;
    PlaySom(sound2,0,VSom,0);
}

if (Botao_rect(DW*.52,DH-48,DW*.52+150,DH-16,32,"Pesquisar",0,c_fuchsia,1)) {
    with(Now[1]) {path_delete(Path); instance_destroy()};
    with(Now[2]) {path_delete(Path); instance_destroy()};
    DRA=scr_sydra; GUI=scr_sygui;
    Now[0]=0; Now[1]=0; Now[2]=0;
    PESQ[0]=_pesq_satelites; PESQ[1]=0; PESQ[2]=room_speed*15;
    PlaySom(sound2,0,VSom,0);
}
