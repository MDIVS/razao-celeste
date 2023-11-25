///menu_Sol()
draw_clear(0);
draw_set_alpha(Now[0]/30);

if (!part_emitter_exists(GUIPARTSY,Now[3])) {
    Now[3] = part_emitter_create(GUIPARTSY);
    part_emitter_region(GUIPARTSY,Now[3],128,256+128,DH/2-128,DH/2+128,ps_shape_ellipse,ps_distr_linear);
    part_emitter_stream(GUIPARTSY,Now[3],parts.solarexplosion,20);
}
dra_planet(256,DH/2,128,1,0,0,background_get_texture(tx_sol));

var t = "O Sol é a estrela central do Sistema Solar. Todos os outros corpos do Sistema Solar, como planetas, planetas anões, asteroides, cometas e poeira, bem como todos os satélites associados a estes corpos, giram ao seu redor.";
draw_text_ext((DW+384)/2,DH/2,t,20,DW-512);

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=scr_sistema_solar;PlaySom(sound2,0,VSom,0)};

Now[0]=min(30,Now[0]+Now[1]);
if (Now[0] < 0) {
    GUI = Now[2];
    part_emitter_destroy(GUIPARTSY,Now[3]);
    part_particles_clear(GUIPARTSY);
    Now[0]=0; Now[1]=1; Now[2]=0; Now[3]=0;
}
