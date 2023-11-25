///OBA_ASTRONAUTICA1_003
draw_set_alpha(image_alpha);

draw_text_ext_colour(DW/2,DH/3,"No dia 29 de Março de 2006, às 23 horas e 29 minutos, horário de Brasília, o primeiro astronauta brasileiro decolou rumo à Estação Espacial Internacional.#Qual o nome dele?",20,DW*.8,16743936,16743936,16743936,16743936,image_alpha);

if BTech(MA,image_index,DW/5,DH/5*3,128-48*image_alpha,"Schwarza",16743936)OBA_ASTRONAUTICA1_WRONG();
if BTech(MA,image_index,DW/5*2,DH/5*4,128-48*image_alpha,"Silvio#Santos",16743936)OBA_ASTRONAUTICA1_WRONG();
if BTech(MA,image_index,DW/5*3,DH/5*4,128-48*image_alpha,"Matheus#Lenninster",16743936)OBA_ASTRONAUTICA1_WRONG();
if BTech(MA,image_index,DW/5*4,DH/5*3,128-48*image_alpha,"Marcos#Pontes",16743936)OBA_ASTRONAUTICA1_CORRECT();
if Botao_rect(DW/3*2-64,DH-60*image_alpha,DW/3*2+64,DH+40-60*image_alpha,40,"Pular",c_dkgray,c_silver,1)OBA_ASTRONAUTICA1_PULAR();
