draw_set_alpha(image_alpha);

        draw_orbita(DW/2,DH/2,128/299,299/2,.016,147,365,image_index);
draw_orbita_planets(DW/2,DH/2,128/299,299/2,.016,147,365,image_index,c_yellow,c_orange,c_blue,16743936);
  draw_orbita_names(DW/2,DH/2,128/299,299/2,.016,147,365,image_index,"Sol","Terra");
draw_text_ext_colour(DW/2,DH/3,"Qual é a duração, em dias, do ano terrestre?",20,DW*.8,16743936,16743936,16743936,16743936,image_alpha);

if BTech(MA,image_index,DW/5,DH/5*3,128-48*image_alpha,"365 dias",16743936)OBA_ASTRONOMIA1_CORRECT();
if BTech(MA,image_index,DW/5*2,DH/5*4,128-48*image_alpha,"7 dias",16743936)OBA_ASTRONOMIA1_WRONG();
if BTech(MA,image_index,DW/5*3,DH/5*4,128-48*image_alpha,"31 dias",16743936)OBA_ASTRONOMIA1_WRONG();
if BTech(MA,image_index,DW/5*4,DH/5*3,128-48*image_alpha,"155 dias",16743936)OBA_ASTRONOMIA1_WRONG();
if Botao_rect(DW/3*2-64,DH-60*image_alpha,DW/3*2+64,DH+40-60*image_alpha,40,"Pular",c_dkgray,c_silver,1)OBA_ASTRONOMIA1_PULAR();