#define ini_guioort
sy.GUI = gui_oort;

#define gui_oort
draw_set_alpha(Now[0]/30);

var i, dis, dir;
for(i=0;i<100;i++){dis=133+(i mod 20)*2;dir=i*11+image_index/2;draw_sprite(spr_asteroid,0,DW/2+lengthdir_x(dis,dir),DH/2+lengthdir_y(dis,dir))};

draw_orbita(DW/2,DH/2,1,100,0,100,500,image_index);
draw_orbita_planets(DW/2,DH/2,1,100,0,100,500,image_index,2101248,2101248,9801059,15721375);
draw_orbita_names(DW/2,DH/2,1,100,0,100,500,image_index,"","Netuno");

draw_set_font(algerian16);
draw_text(DW/2,DH/2,"NUVEM DE#OORT");
draw_set_font(arialbold12);
draw_set_valign(fa_top);
draw_text_ext(DW/2,32,"A nuvem de Oort é uma nuvem esférica de planetesimais voláteis que se acredita localizar-se a cerca de 50 000 UA, ou quase um ano-luz, do Sol. Isso significa que ela está a aproximadamente um quarto da distância a Proxima Centauri, a estrela mais próxima do Sol.",20,DW*.8)
draw_set_valign(fa_middle);

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=exit_guioort;PlaySom(sound2,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=3;Now[2]=0};

#define exit_guioort
GUI = -1;
instance_create(0,0,io_sosy);
draw_set_alpha(1);