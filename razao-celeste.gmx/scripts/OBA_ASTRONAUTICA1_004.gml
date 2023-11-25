///OBA_ASTRONAUTICA1_004
draw_set_alpha(image_alpha);

draw_text_ext_colour(DW/2,DH/3,"Nas imagens obtidas por satélites é possível identificar objetos por suas cores e formas. Qual é a cor da floresta na imagem obtida por um satélite?",20,DW*.8,16743936,16743936,16743936,16743936,image_alpha);

if BTech(MA,image_index,DW/5,DH/5*3,128-48*image_alpha,"Azul",16743936)OBA_ASTRONAUTICA1_WRONG();
if BTech(MA,image_index,DW/5*2,DH/5*4,128-48*image_alpha,"Verde",16743936)OBA_ASTRONAUTICA1_CORRECT();
if BTech(MA,image_index,DW/5*3,DH/5*4,128-48*image_alpha,"Amarelo",16743936)OBA_ASTRONAUTICA1_WRONG();
if BTech(MA,image_index,DW/5*4,DH/5*3,128-48*image_alpha,"Roxo",16743936)OBA_ASTRONAUTICA1_WRONG();
if Botao_rect(DW/3*2-64,DH-60*image_alpha,DW/3*2+64,DH+40-60*image_alpha,40,"Pular",c_dkgray,c_silver,1)OBA_ASTRONAUTICA1_PULAR();
