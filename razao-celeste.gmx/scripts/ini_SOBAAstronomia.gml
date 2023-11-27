#define ini_SOBAAstronomia
sy.GUI = SOBAAstronomia;
instance_create(0,0,obj_simulado);
obj_simulado.GUI=OBA_ASTRONOMIA1;

#define SOBAAstronomia
///SOBAAstronomia
if(image_index mod 10)==0part_particles_create(GUIPARTSY,DW/2,DH/2,parts.starsbackground,1);
draw_set_alpha(Now[0]/30);
ini_open("Salvo.ini");
draw_set_font(algerian48);
dra_imgtxtsource(spr_astrocoin,0,DW/2,32,ini_read_real("OBA","Astrocoins",0),32);
draw_set_font(arialbold12);
draw_set_halign(fa_left);
draw_sprite_ext(spr_minitriangle,0,32,32,1,1,0,c_lime,Now[0]/30);
draw_text(64,32,ini_read_real("OBA","ASTRONOMIA1_ACERTOS",0));
draw_sprite_ext(spr_minitriangle,0,32,64,1,1,0,c_red,Now[0]/30);
draw_text(64,64,ini_read_real("OBA","ASTRONOMIA1_ERROS",0));
draw_sprite_ext(spr_minitriangle,0,32,96,1,1,0,c_silver,Now[0]/30);
draw_text(64,96,ini_read_real("OBA","ASTRONOMIA1_PULOS",0));
draw_set_halign(fa_center);

with(obj_simulado)if GUI!=-1script_execute(GUI);
ini_close();

draw_set_alpha(Now[0]/30);
if Bspr(MA,spr_home,0,DW/2,DH-48)&&Now[1]>0{instance_create(0,0,io_quiz);Now[1]=-3;Now[2]=OBA_selectalevel;PlaySom(sound1,0,VSom,0);obj_simulado.Destroy=1};
draw_set_font(algerian16);
draw_text_colour(DW-128*Now[0]/30,20,"RAZÃO CELESTE",c_aqua,c_aqua,16743936,16743936,Now[0]/30);
draw_set_font(arialbold12);
Now[0]=min(30,Now[0]+Now[1]);
if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}