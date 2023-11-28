dra_planet(DW/2,DH/2-100,DH/15,1,image_index,0,background_get_texture(tx_lua));
draw_text_ext_colour(DW/2,100,"Como você sabe, a Lua é o astro mais próximo da Terra.#A afirmação abaixo está certa ou errada?#A atmosfera da Lua é igual à da Terra.",20,DW*.8,16743936,16743936,16743936,16743936,1);

balternative(DW/2,DH-192,"Errado",1);
balternative(DW/2,DH-128,"Certo",0);
