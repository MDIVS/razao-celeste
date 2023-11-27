#define ini_menuSol
sy.GUI = menu_Sol;
sy.Now[3] = part_emitter_create(GUIPARTSY);
part_emitter_region(GUIPARTSY,sy.Now[3],DW/2-128,DW/2+128,DH/2-128,DH/2+128,ps_shape_ellipse,ps_distr_linear);
part_emitter_stream(GUIPARTSY,sy.Now[3],parts.solarexplosion,20);

#define menu_Sol
draw_set_alpha(Now[0]/30);


dra_planet(DW/2,DH/2,128,1,0,0,background_get_texture(tx_sol));

draw_set_valign(fa_top);
draw_text_ext(DW/2,32,"O Sol é a estrela central do Sistema Solar. Todos os outros corpos do Sistema Solar, como planetas, planetas anões, asteroides, cometas e poeira, bem como todos os satélites associados a estes corpos, giram ao seu redor.",20,DW*.8);
draw_set_valign(fa_middle);

if Bspr(MA,spr_home,0,DW/2,DH-48) {part_emitter_destroy(GUIPARTSY,Now[3]); part_particles_clear(GUIPARTSY);instance_create(0,0,io_sosy); GUI = -1; PlaySom(sound2,0,VSom,0)};