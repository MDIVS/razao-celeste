///gui_pesq_orbita()
Now[0]++;
draw_background_tiled(bg_pesq,0,0);

draw_set_halign(fa_left);
//draw star
DrawCircle(DW/2,DH/2,DH*.05,c_silver,c_silver,image_alpha,image_alpha,16,DH*.05);
DrawCircle(DW/2,DH/2,DH*.05,c_orange,c_orange,image_alpha,image_alpha,16,4);
draw_text(DW/2+DH*.06,DH/2,string_upper(PLANETA.Estrela));

//draw planet
with(Now[1]) {
    DrawCircle(x,y,14,c_silver,c_silver,sy.image_alpha,sy.image_alpha,16,14);
    DrawCircle(x,y,14,c_orange,c_orange,sy.image_alpha,sy.image_alpha,16,2);
    for (var i=path_speed; i>=0; i--) {
        part_particles_create_colour(GUIPARTSY,x+lengthdir_x(14+i,direction+180),y+lengthdir_y(14+i,direction+180),parts.flare,c_purple,1);
    }
    draw_text(x+21,y,string_upper(PLANETA.Nome));
}
draw_set_halign(fa_center);

var t="Ganhe 200 moedas para estudar a órbita do planeta "+PLANETA.Nome+"!#A pesquisa de órbita dura 15 segundos.";
draw_text(round(DW/2),round(DH*.8),t);

if (Botao_rect(DW*.48-110,DH-48,DW*.48,DH-16,32,"Voltar",0,c_fuchsia,1)) {
    with(Now[1]) instance_destroy();
    path_delete(Now[2]);
    Now[0]=0; Now[1]=0; Now[2]=0;
    GUI = scr_pesquisar;
    PlaySom(sound2,0,VSom,0);
}

if (Botao_rect(DW*.52,DH-48,DW*.52+150,DH-16,32,"Pesquisar",0,c_fuchsia,1)) {
    with(Now[1]) instance_destroy();
    path_delete(Now[2]);
    DRA=scr_sydra; GUI=scr_sygui;
    Now[0]=0; Now[1]=0; Now[2]=0;
    PESQ[0]=_pesq_orbita; PESQ[1]=0; PESQ[2]=room_speed*15;
    PlaySom(sound2,0,VSom,0);
}
