///OBA_ASTRONOMIA1_014
draw_set_alpha(image_alpha);

draw_text_ext_colour(DW/2,DH/3,"Rotação é o nome dado ao movimento da Terra em torno de seu próprio eixo, responsável pelos dias e noites",20,DW*.8,16743936,16743936,16743936,16743936,image_alpha);
dra_planet(DW/2,DH/2,40,1,image_index,23,background_get_texture(tx_terra));

if BTech(MA,image_index,DW/3,DH/3*2,128-48*image_alpha,"Errado",16743936)OBA_ASTRONOMIA1_WRONG();
if BTech(MA,image_index,DW/3*2,DH/3*2,128-48*image_alpha,"Certo",16743936)OBA_ASTRONOMIA1_CORRECT();
if Botao_rect(DW/3*2-64,DH-60*image_alpha,DW/3*2+64,DH+40-60*image_alpha,40,"Pular",c_dkgray,c_silver,1)OBA_ASTRONOMIA1_PULAR();
