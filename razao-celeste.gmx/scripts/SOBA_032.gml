dra_planet(DW/2,DH/2-100,DH/15,1,image_index,0,background_get_texture(tx_sol));
draw_text_ext_colour(DW/2,100,"O Sol é o único astro com luz própria do sistema solar. Quando a luz dele é bloqueada temos as sombras. Qual é a cor da sua (e não do Sol) sombra?",20,DW*.8,16743936,16743936,16743936,16743936,1);

balternative(DW/2,DH-320,"Amarela",0);
balternative(DW/2,DH-256,"Verde",0);
balternative(DW/2,DH-192,"Preta",1);
balternative(DW/2,DH-128,"Branca",0);
