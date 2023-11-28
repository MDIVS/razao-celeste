        draw_orbita(DW/2,DH/2,128/299,299/2,.016,147,365,image_index);
draw_orbita_planets(DW/2,DH/2,128/299,299/2,.016,147,365,image_index,c_yellow,c_orange,c_blue,16743936);
  draw_orbita_names(DW/2,DH/2,128/299,299/2,.016,147,365,image_index,"Sol","Terra");
draw_text_ext_colour(DW/2,100,"O ano terrestre dura 365 dias porque esse é o período que o planeta leva para completar uma volta em torno do sol.",20,DW*.8,16743936,16743936,16743936,16743936,1);

balternative(DW/2,DH-192,"Errado",0);
balternative(DW/2,DH-128,"Certo",1);
