draw_set_alpha(image_alpha);

        draw_orbita(DW/2,DH/2,128/299,299/2,.016,147,365,image_index);
draw_orbita_planets(DW/2,DH/2,128/299,299/2,.016,147,365,image_index,c_blue,16743936,c_gray,c_silver);
  draw_orbita_names(DW/2,DH/2,128/299,299/2,.016,147,365,image_index,"?","Lua");
draw_text_ext_colour(DW/2,DH/3,"Toque no planeta que exerce mais força gravitacional sobre a Lua",20,DW*.8,16743936,16743936,16743936,16743936,image_alpha);

if BPlanet(MA,DW/5,DH/5*3,96-48*image_alpha,0,image_index,background_get_texture(tx_mercurio))OBA_ASTRONOMIA1_WRONG();
if BPlanet(MA,DW/5*2,DH/5*4,96-48*image_alpha,0,-image_index,background_get_texture(tx_venus))OBA_ASTRONOMIA1_WRONG();
if BPlanet(MA,DW/5*3,DH/5*4,96-48*image_alpha,0,image_index,background_get_texture(tx_terra))OBA_ASTRONOMIA1_CORRECT();
if BPlanet(MA,DW/5*4,DH/5*3,96-48*image_alpha,0,image_index,background_get_texture(tx_marte))OBA_ASTRONOMIA1_WRONG();
if Botao_rect(DW/3*2-64,DH-60*image_alpha,DW/3*2+64,DH+40-60*image_alpha,40,"Pular",c_dkgray,c_silver,1)OBA_ASTRONOMIA1_PULAR();
