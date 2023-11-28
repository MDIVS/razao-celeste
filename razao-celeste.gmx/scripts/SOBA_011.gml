        draw_orbita(DW/2,DH/2,128/299,299/2,.016,147,365,image_index);
draw_orbita_planets(DW/2,DH/2,128/299,299/2,.016,147,365,image_index,c_yellow,c_orange,c_blue,16743936);
  draw_orbita_names(DW/2,DH/2,128/299,299/2,.016,147,365,image_index,"Sol","Terra");
draw_text_ext_colour(DW/2,100,"Qual é a duração, em dias, do ano terrestre?",20,DW*.8,16743936,16743936,16743936,16743936,1);

balternative(DW/2,DH-320,"365 dias",1);
balternative(DW/2,DH-256,"7 dias",0);
balternative(DW/2,DH-192,"31 dias",0);
balternative(DW/2,DH-128,"155 dias",0);
