///OBA_ASTRONAUTICA1_009
draw_set_alpha(image_alpha);

draw_text_ext_colour(DW/2,DH/3,"O furacão é um fenômeno natural formado por nuvens pequenas e ventos fracos que giram em torno de um centro",20,DW*.8,16743936,16743936,16743936,16743936,image_alpha);

if BTech(MA,image_index,DW/3,DH/3*2,128-48*image_alpha,"Errado",16743936)OBA_ASTRONAUTICA1_CORRECT();
if BTech(MA,image_index,DW/3*2,DH/3*2,128-48*image_alpha,"Certo",16743936)OBA_ASTRONAUTICA1_WRONG();
if Botao_rect(DW/3*2-64,DH-60*image_alpha,DW/3*2+64,DH+40-60*image_alpha,40,"Pular",c_dkgray,c_silver,1)OBA_ASTRONAUTICA1_PULAR();
