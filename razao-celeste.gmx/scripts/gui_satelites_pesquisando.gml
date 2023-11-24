///gui_satelites_pesquisando()
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

var t = "A pesquisa de translação ainda levará "+string(round((PESQ[2]-PESQ[1])/room_speed))+" segundos para revelar os principais satélites do planeta "+PLANETA.Nome+".#Esta pesquisa libera a opção de minerar os recursos dos satélites, ganhando moedas por tempo.";

var h = string_height(t);
draw_text(DW/2,DH-h/2-64,t);

if (Botao_rect(DW/2-212,DH-48,DW/2-12,DH-16,48,"Abortar pesquisa",0,c_red,1)) {
    with(Now[1]) {path_delete(Path); instance_destroy()};
    with(Now[2]) {path_delete(Path); instance_destroy()};
    Now[0]=0; Now[1]=0; Now[2]=0;
    DRA=scr_sydra; GUI=scr_sygui;
    PESQ[0]=scr_pesquisar; PESQ[1]=0; PESQ[2]=0;
    PlaySom(sound2,0,VSom,0);
}

if (Botao_rect(DW/2+12,DH-48,DW/2+212,DH-16,8,"Voltar ao jogo",0,c_fuchsia,1)) {
    with(Now[1]) {path_delete(Path); instance_destroy()};
    with(Now[2]) {path_delete(Path); instance_destroy()};
    Now[0]=0; Now[1]=0; Now[2]=0;
    DRA=scr_sydra; GUI=scr_sygui;
    PlaySom(sound2,0,VSom,0);
}
