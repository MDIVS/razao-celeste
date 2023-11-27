draw_set_alpha(image_alpha);

        draw_orbita(DW/2,DH/2,128/299,299/2,.016,147,365,image_index);
draw_orbita_planets(DW/2,DH/2,128/299,299/2,.016,147,365,image_index,c_yellow,c_orange,c_blue,16743936);
  draw_orbita_names(DW/2,DH/2,128/299,299/2,.016,147,365,image_index,"Sol","Terra");
draw_text_ext_colour(DW/2,DH/3,"O ano terrestre dura 365 dias porque esse é o período que o planeta leva para completar uma volta em torno de si mesmo.",20,DW*.8,16743936,16743936,16743936,16743936,image_alpha);

if BTech(MA,image_index,DW/3,DH/3*2,128-48*image_alpha,"Errado",16743936)OBA_ASTRONOMIA1_CORRECT();
if BTech(MA,image_index,DW/3*2,DH/3*2,128-48*image_alpha,"Certo",16743936)OBA_ASTRONOMIA1_WRONG();
if Botao_rect(DW/3*2-64,DH-60*image_alpha,DW/3*2+64,DH+40-60*image_alpha,40,"Pular",c_dkgray,c_silver,1)OBA_ASTRONOMIA1_PULAR();
