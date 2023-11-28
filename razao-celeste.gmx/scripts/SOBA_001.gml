dra_planet(DW/2,DH/2-100,DH/15,1,image_index,23,background_get_texture(tx_terra));
draw_text_ext_colour(DW/2,100,"Qual é a duração, em horas, do dia terrestre?",20,DW*.8,16743936,16743936,16743936,16743936,1);

balternative(DW/2,DH-320,"10 horas",0);
balternative(DW/2,DH-256,"24 horas",1);
balternative(DW/2,DH-192,"20 horas",0);
balternative(DW/2,DH-128,"12 horas",0);
