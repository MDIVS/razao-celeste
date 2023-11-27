#define ini_guicinturao
sy.GUI = gui_cinturao;

#define gui_cinturao
draw_set_alpha(Now[0]/30);

var i, dis, dir;
for(i=0;i<100;i++){dis=133+(i mod 20)*2;dir=i*11+image_index/2;draw_sprite(spr_asteroid,0,DW/2+lengthdir_x(dis,dir),DH/2+lengthdir_y(dis,dir))};

draw_orbita(DW/2,DH/2,1,100,0,100,687/10,image_index);
draw_orbita_planets(DW/2,DH/2,1,100,0,100,687/10,image_index,2101248,2101248,16256,32511);
draw_orbita_names(DW/2,DH/2,1,100,0,100,687/10,image_index,"","Marte");
draw_orbita(DW/2,DH/2,1,200,0,200,4331/10,image_index);
draw_orbita_planets(DW/2,DH/2,1,200,0,200,4331/10,image_index,2101248,2101248,6319232,3494272);
draw_orbita_names(DW/2,DH/2,1,200,0,200,4331/10,image_index,"","Júpiter");

draw_set_font(algerian16);
draw_text(DW/2,DH/2,"CINTURÃO DE#ASTEROIDES");
draw_set_font(arialbold12);
draw_set_valign(fa_top);
draw_text_ext(DW/2,32,"Os asteróides são corpos celestes rochosos e metálicos que orbitam o sol e podem ser encontrados em várias regiões do sistema solar, mas a maioria se encontra entre a órbita de Marte e de Júpiter na região conhecida como Cinturão de Asteróides.",20,DW*.8)
draw_set_valign(fa_middle);

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=exit_guicinturao;PlaySom(sound2,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=3;Now[2]=0};

#define exit_guicinturao
GUI = -1;
instance_create(0,0,io_sosy);
draw_set_alpha(1);