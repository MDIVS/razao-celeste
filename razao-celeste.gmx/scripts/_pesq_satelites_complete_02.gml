///gui_pesq_satelites()
Now[0]++;
draw_background_tiled(bg_pesq,0,0);

draw_set_halign(fa_left);
//draw planet
DrawCircle(DW/2,DH/2,DH*.05,c_silver,c_silver,image_alpha,image_alpha,16,DH*.05);
DrawCircle(DW/2,DH/2,DH*.05,c_orange,c_orange,image_alpha,image_alpha,16,4);
draw_text(DW/2+DH*.06,DH/2,string_upper(PLANETA.Nome));

for (var i=1; i<array_length_1d(PLANETA.Satelites); i++) { //draw satelite
    var sat = PLANETA.Satelites[i];
    DrawCircle(Now[i].x,Now[i].y,DH*.02,c_silver,c_silver,image_alpha,image_alpha,16,DH*.02);
    DrawCircle(Now[i].x,Now[i].y,DH*.02,c_orange,c_orange,image_alpha,image_alpha,16,2);
    draw_text(Now[i].x+DH*.03,Now[i].y,sat[2]);
}
draw_set_halign(fa_center);

var t = "Toque na tela para voltar ao jogo.";
draw_text(round(DW/2),round(DH*.8),t);

if (Botao_rect(DW*.48-110,DH-48,DW*.48,DH-16,32,"Voltar",0,c_fuchsia,1)) {
    Now[0]=0;
    for (var i=1; i<array_length_1d(PLANETA.Satelites); i++) {
        with(Now[i]) {path_delete(Path); instance_destroy()};
        Now[i] = 0;
    }
    GUI = scr_pesquisar;
    PlaySom(sound2,0,VSom,0);
}
