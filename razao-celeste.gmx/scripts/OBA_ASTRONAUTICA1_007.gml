///OBA_ASTRONAUTICA1_007
draw_set_alpha(image_alpha);

draw_text_ext_colour(DW/2,DH/3,"Fenômeno natural formado por nuvens grandes e ventos fortes que giram em torno de um centro",20,DW*.8,16743936,16743936,16743936,16743936,image_alpha);

if BTech(MA,image_index,DW/5,DH/5*3,128-48*image_alpha,"Neve",16743936)OBA_ASTRONAUTICA1_WRONG();
if BTech(MA,image_index,DW/5*2,DH/5*4,128-48*image_alpha,"Neblina",16743936)OBA_ASTRONAUTICA1_WRONG();
if BTech(MA,image_index,DW/5*3,DH/5*4,128-48*image_alpha,"Chuva",16743936)OBA_ASTRONAUTICA1_WRONG();
if BTech(MA,image_index,DW/5*4,DH/5*3,128-48*image_alpha,"Furacão",16743936)OBA_ASTRONAUTICA1_CORRECT();
if Botao_rect(DW/3*2-64,DH-60*image_alpha,DW/3*2+64,DH+40-60*image_alpha,40,"Pular",c_dkgray,c_silver,1)OBA_ASTRONAUTICA1_PULAR();