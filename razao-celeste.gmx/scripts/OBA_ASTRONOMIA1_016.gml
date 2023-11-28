///OBA_ASTRONOMIA1_016
dra_planet(DW/2,DH/2-100,DH/15,1,image_index,23,background_get_texture(tx_marte));
draw_text_ext_colour(DW/2,100,"Marte é o planeta mais visitado por naves e robôs enviados pelos homens. Provavelmente será o primeiro planeta a ser visitado por astronautas. Qual é a cor de Marte?",20,DW*.8,16743936,16743936,16743936,16743936,1);

balternative(DW/2,DH-320,"Azul",0);
balternative(DW/2,DH-256,"Branco",0);
balternative(DW/2,DH-192,"Vermelho",1);
balternative(DW/2,DH-128,"Verde",0);
