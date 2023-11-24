///_pesq_orbita_pesquisando()
draw_background_tiled(bg_pesq,0,0);

draw_set_halign(fa_left);
//draw star
DrawCircle(DW/2,DH/2,DH*.05,c_silver,c_silver,image_alpha,image_alpha,16,DH*.05);
DrawCircle(DW/2,DH/2,DH*.05,c_orange,c_orange,image_alpha,image_alpha,16,4);
draw_text(DW/2+DH*.06,DH/2,string_upper(PLANETA.Estrela));

//draw planet
DrawCircle(Now[1].x,Now[1].y,DH*.02,c_silver,c_silver,image_alpha,image_alpha,16,DH*.02);
DrawCircle(Now[1].x,Now[1].y,DH*.02,c_orange,c_orange,image_alpha,image_alpha,16,2);
draw_text(Now[1].x+DH*.03,Now[1].y,string_upper(PLANETA.Nome));
draw_set_halign(fa_center);

var t="PESQUISA DE ÓRBITA#Calma! Ainda faltam "+string(round((PESQ[2]-PESQ[1])/room_speed))+" segundos para ganhar o seu prêmio.";
draw_text(round(DW/2),round(DH*.8),t);

if (Botao_rect(DW/2-212,DH-48,DW/2-12,DH-16,48,"Abortar pesquisa",0,c_red,1)) {
    with(Now[1]) instance_destroy();
    path_delete(Now[2]);
    Now[0]=0; Now[1]=0; Now[2]=0;
    DRA=scr_sydra; GUI=scr_sygui;
    PESQ[0]=scr_pesquisar; PESQ[1]=0; PESQ[2]=0;
    PlaySom(sound2,0,VSom,0);
}

if (Botao_rect(DW/2+12,DH-48,DW/2+212,DH-16,8,"Voltar ao jogo",0,c_fuchsia,1)) {
    with(Now[1]) instance_destroy();
    path_delete(Now[2]);
    Now[0]=0; Now[1]=0; Now[2]=0;
    DRA=scr_sydra; GUI=scr_sygui;
    PlaySom(sound2,0,VSom,0);
}
