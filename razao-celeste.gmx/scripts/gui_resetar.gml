draw_background_tiled_ext(tx_null,0,0,1,1,make_colour_hsv(image_index,255,64),1);

draw_set_font(font_CooperBlack);
draw_text_colour(DW/2,DH*.2,"Resetar jogo?",c_orange,c_orange,c_orange,c_orange,1);

draw_set_font(font_CourierNew);
draw_text(DW/2,DH*.2+24,"Esta ação é de sua total responsabilidade.");

draw_set_valign(fa_bottom);
draw_text_ext(DW*.25,DH-58,"Toque e volte para tela anterior.",12,DW/3);
draw_text_ext(DW*.75,DH-58,"Toque e apague todo o seu progresso, conquistas e configurações.",12,DW/3);
draw_set_valign(fa_middle);

if (Botao_rect(DW*.05,DH-36,DW*.475,DH-12,0,"Cancelar",0,c_lime,1)) GUI = gui_config;
if (Botao_rect(DW*.525,DH-36,DW*.95,DH-12,0,"Confirmar",0,c_orange,1)) {
    file_delete("Salvo.ini");
    with(all) instance_destroy();
    audio_stop_all();
    game_restart();
}
