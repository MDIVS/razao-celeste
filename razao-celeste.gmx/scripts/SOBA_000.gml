dra_planet(DW/2,DH/2-100,DH/15,1,image_index,23,background_get_texture(tx_terra));
draw_text_ext_colour(DW/2,100,"Qual é o nome desse astro?",20,DW*.8,16743936,16743936,16743936,16743936,1);

balternative(DW/2,DH-320,"Terra"    ,1);
balternative(DW/2,DH-256,"Saturno"  ,0);
balternative(DW/2,DH-192,"Lua"      ,0);
balternative(DW/2,DH-128,"Asteroide",0);
