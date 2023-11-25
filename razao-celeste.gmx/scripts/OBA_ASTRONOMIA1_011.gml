///OBA_ASTRONOMIA1_011
draw_set_alpha(image_alpha);

draw_text_ext_colour(DW/2,DH/3,"O Sol é o único astro com luz própria do sistema solar. Quando a luz dele é bloqueada temos as sombras. Qual é a cor da sua (e não do Sol) sombra?",20,DW*.8,16743936,16743936,16743936,16743936,image_alpha);

if BTech(MA,image_index,DW/5,DH/5*3,128-48*image_alpha,"Amarela",16743936)OBA_ASTRONOMIA1_WRONG();
if BTech(MA,image_index,DW/5*2,DH/5*4,128-48*image_alpha,"Verde",16743936)OBA_ASTRONOMIA1_WRONG();
if BTech(MA,image_index,DW/5*3,DH/5*4,128-48*image_alpha,"Preta",16743936)OBA_ASTRONOMIA1_CORRECT();
if BTech(MA,image_index,DW/5*4,DH/5*3,128-48*image_alpha,"Branca",16743936)OBA_ASTRONOMIA1_WRONG();
if Botao_rect(DW/3*2-64,DH-60*image_alpha,DW/3*2+64,DH+40-60*image_alpha,40,"Pular",c_dkgray,c_silver,1)OBA_ASTRONOMIA1_PULAR();
