///menu_creditos()
draw_background_tiled_ext(tx_null,0,0,1,1,make_colour_rgb(64,64,0),1);
var t = "Maicon Douglas Invenção Viana dos Santos#maiconoficialbr@gmail.com#Programador###Jorge Lúcio Rodrigues das Dores#jorgeluciorodrigues@hotmail.com#Orientador do projeto###MillionthVector#http://millionthvector.blogspot.com/#Artes gráficas das naves"

draw_set_font(font_Helvetica);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(16,16,t);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(font_CourierNew);


if (Botao_rect(round(DW/3*2)-96,DH-48,round(DW/3*2)+96,DH-16,16,"VOLTAR AO MENU",-1,c_white,1)) {
    GUI = scr_menu;
    PlaySom(sound2,0,VSom,0);
}
