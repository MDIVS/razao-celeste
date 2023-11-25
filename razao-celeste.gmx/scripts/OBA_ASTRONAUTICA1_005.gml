///OBA_ASTRONAUTICA1_005
draw_set_alpha(image_alpha);

draw_text_ext_colour(DW/2,DH/3,"No Brasil, os satélites são construídos no Instituto Nacional de Pesquisas Espaciais (INPE) e foguetes no Instituto de Aeronáutica e Espaço (IAE)",20,DW*.8,16743936,16743936,16743936,16743936,image_alpha);

if BTech(MA,image_index,DW/3,DH/3*2,128-48*image_alpha,"Errado",16743936)OBA_ASTRONAUTICA1_WRONG();
if BTech(MA,image_index,DW/3*2,DH/3*2,128-48*image_alpha,"Certo",16743936)OBA_ASTRONAUTICA1_CORRECT();
if Botao_rect(DW/3*2-64,DH-60*image_alpha,DW/3*2+64,DH+40-60*image_alpha,40,"Pular",c_dkgray,c_silver,1)OBA_ASTRONAUTICA1_PULAR();
