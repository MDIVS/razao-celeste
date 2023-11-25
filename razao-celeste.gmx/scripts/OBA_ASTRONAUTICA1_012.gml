///OBA_ASTRONAUTICA1_012
draw_set_alpha(image_alpha);

draw_text_ext_colour(DW/2,DH/3,'O homem pousou na Lua em 1969. Para transportar astronautas até a Lua foi utilizado um foguete. Qual o nome deste foguete?',20,DW*.8,16743936,16743936,16743936,16743936,image_alpha);

if BTech(MA,image_index,DW/5,DH/5*3,128-48*image_alpha,"Bumper 2",16743936)OBA_ASTRONAUTICA1_WRONG();
if BTech(MA,image_index,DW/5*2,DH/5*4,128-48*image_alpha,"Plutão 2",16743936)OBA_ASTRONAUTICA1_WRONG();
if BTech(MA,image_index,DW/5*3,DH/5*4,128-48*image_alpha,"Próton",16743936)OBA_ASTRONAUTICA1_WRONG();
if BTech(MA,image_index,DW/5*4,DH/5*3,128-48*image_alpha,"Saturno V",16743936)OBA_ASTRONAUTICA1_CORRECT();
if Botao_rect(DW/3*2-64,DH-60*image_alpha,DW/3*2+64,DH+40-60*image_alpha,40,"Pular",c_dkgray,c_silver,1)OBA_ASTRONAUTICA1_PULAR();
