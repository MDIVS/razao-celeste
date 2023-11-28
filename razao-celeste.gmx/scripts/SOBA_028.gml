        draw_orbita(DW/2,DH/2,128/299,299/2,.016,147,365,image_index);
draw_orbita_planets(DW/2,DH/2,128/299,299/2,.016,147,365,image_index,c_blue,16743936,c_gray,c_silver);
  draw_orbita_names(DW/2,DH/2,128/299,299/2,.016,147,365,image_index,"?","Lua");
draw_text_ext_colour(DW/2,100,"Toque no planeta que exerce mais força gravitacional sobre a Lua",20,DW*.8,16743936,16743936,16743936,16743936,1);

bplanetalternative(DW/5,DH/5*3,48,0,image_index,background_get_texture(tx_mercurio),"",0);
bplanetalternative(DW/5*2,DH/5*4,48,0,-image_index,background_get_texture(tx_venus),"",0);
bplanetalternative(DW/5*3,DH/5*4,48,0,image_index,background_get_texture(tx_terra),"",1);
bplanetalternative(DW/5*4,DH/5*3,48,0,image_index,background_get_texture(tx_marte),"",0);
