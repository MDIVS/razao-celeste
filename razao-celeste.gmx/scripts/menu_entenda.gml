///menu_entenda()
draw_background_tiled_ext(tx_null,0,0,1,1,make_colour_rgb(0,64,0),1);

draw_set_valign(fa_top);
var yy = 32;

var t = "Olá caro jogador-aluno!";
draw_set_font(font_CooperBlack);
draw_text_ext(round(DW/2),yy,t,20,round(DW*.8));
yy+=string_height(t)+4;
draw_set_font(font_CourierNew);

t = "Este jogo foi desenvolvido com um objetivo muuuito simples:#disponibilizar uma ferramenta (o jogo) lúdica e didática no campo das ciências exatas!";
draw_text_ext(round(DW/2),yy,t,13,round(DW*.8));
yy += string_height_ext(t,13,round(DW*.8))+32;

t = "Mas para que este objetivo ocorra, é necessária a sua colaboração! Para isto, exercite a sua leitura, não deixe caixinhas de texto passarem em vão e responda corretamente às questões adaptadas da OBA! Fique atento às ilustrações de órbitas planetárias, seja distinguindo periélio e afélio, seja observando o formato da trajetória do planeta...";
draw_text_ext(round(DW/2),yy,t,13,round(DW*.8));
yy += string_height_ext(t,13,round(DW*.8))+32;

t = "E por último e não menos importante, pedimos mil vezes, não se limite à esse jogo! Esse é apenas um acessório para você exercitar seu conhecimento e adquirir ou fixar alguma informação de forma lúdica. Você também pode buscar informações a respeito dos planetas no site do Observatório Nacional, por exemplo! Também sinta-se à vontade para explorar o site da Olímpiada Brasileira de Astronomia e Astronáutica (OBA)!";
draw_text_ext(round(DW/2),yy,t,13,round(DW*.8));
draw_set_valign(fa_middle);

if (Botao_rect(round(DW/3*2)-96,DH-48,round(DW/3*2)+96,DH-16,16,"VOLTAR AO MENU",-1,c_white,1)) {
    GUI = scr_menu;
    PlaySom(sound2,0,VSom,0);
}
