///OBA_ASTRONOMIA1_007
draw_set_alpha(image_alpha);

dra_planet(DW/2,DH/2,40,1,image_index,0,background_get_texture(tx_lua));
draw_text_ext_colour(DW/2,DH/3,"Qual é o nome desse astro?",20,DW*.8,16743936,16743936,16743936,16743936,image_alpha);

if BTech(MA,image_index,DW/5,DH/5*3,128-48*image_alpha,"Terra",16743936)OBA_ASTRONOMIA1_WRONG();
if BTech(MA,image_index,DW/5*2,DH/5*4,128-48*image_alpha,"Saturno",16743936)OBA_ASTRONOMIA1_WRONG();
if BTech(MA,image_index,DW/5*3,DH/5*4,128-48*image_alpha,"Lua",16743936)OBA_ASTRONOMIA1_CORRECT();
if BTech(MA,image_index,DW/5*4,DH/5*3,128-48*image_alpha,"Asteroide",16743936)OBA_ASTRONOMIA1_WRONG();
if Botao_rect(DW/3*2-64,DH-60*image_alpha,DW/3*2+64,DH+40-60*image_alpha,40,"Pular",c_dkgray,c_silver,1)OBA_ASTRONOMIA1_PULAR();
