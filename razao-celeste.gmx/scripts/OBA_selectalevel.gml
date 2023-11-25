///OBA_selectalevel()
ini_open("Salvo.ini");
if((image_index mod 10)==0)part_particles_create(GUIPARTSY,DW/2,DH/2,parts.starsbackground,1);
draw_set_alpha(Now[0]/30);
BAstrocoin(DW/2,32,ini_read_real("OBA","Astrocoins",0));

draw_text(DW/2,64,"Simulado virtual para a OBA");
draw_set_font(arial8);
draw_set_valign(fa_top);
draw_text(DW/2,80,"Ganhe Astrocoins para cada resposta correta!");
draw_set_font(arialbold12);
draw_set_valign(fa_middle);

if BTech(MA,image_index,DW/3,DH/2,144-48*Now[0]/30,"Simulado para#Astronomia",16743936)&&Now[1]>0{Now[1]=-3;Now[2]=SOBAAstronomia;PlaySom(sound1,0,VSom,0);instance_create(0,0,obj_simulado);obj_simulado.GUI=OBA_ASTRONOMIA1};
if BTech(MA,-image_index,DW/3*2,DH/2,144-48*Now[0]/30,"Simulado para#Astronáutica",16743936)&&Now[1]>0{Now[1]=-3;Now[2]=SOBAAstronautica;PlaySom(sound1,0,VSom,0);instance_create(0,0,obj_simulado);obj_simulado.GUI=OBA_ASTRONAUTICA1};

if Bspr(MA,spr_home,0,DW/2,DH-48)&&Now[1]>0{Now[1]=-3;Now[2]=scr_menu;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=3;Now[2]=0}
ini_close();
