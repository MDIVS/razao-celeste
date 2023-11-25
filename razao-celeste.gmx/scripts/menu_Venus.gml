#define menu_Venus
///menu_Venus()
ini_open("Salvo.ini");
draw_set_alpha(Now[0]/30);

dra_planet(DW/2,DH/2,96*.7,1,-image_index,3,background_get_texture(tx_venus));
if BTech(MA,image_index,DW/2,DH/2,96,"Explorar",16743936){
    if VMus>0&&audio_is_playing(BMus)audio_sound_gain(BMus,0,1);
    Now[1]=-1;Now[2]=ini_Exploration;PlaySom(sound2,0,VSom,0);
}

if BTech(MA,image_index,96,DH/2,64,"Órbita",16743936){Now[1]=-3;Now[2]=venus_orbita;PlaySom(sound2,0,VSom,0)}

draw_set_valign(fa_top);
draw_text(DW/2,20,"Planeta Vênus");
draw_text(DW/2,DH/2-128,"Missão - Defenda a Estação");
draw_set_font(arial8);
draw_text_ext(DW/2,48,'Vênus é o segundo planeta do Sistema Solar em ordem de distância a partir do Sol, orbitando-o a cada 224,7 dias. Recebeu seu nome em homenagem à deusa romana do amor e da beleza Vénus, equivalente a Afrodite',12,DW*.8);
draw_text_ext(DW/2,DH/2+112,'Ondas de ataques inimigos querem ouvir o "boom" de sua estação!#Defenda sua Estação Espacial, custe o que custar!',12,192);
draw_set_valign(fa_middle);
draw_set_font(arialbold12);

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=ini_teluricosview;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}
ini_close();

#define venus_orbita
ini_open("Salvo.ini");
draw_set_alpha(Now[0]/30);
draw_text(DW/2,40,"Órbita do Planeta Vênus");

var i,dir=360/365*Now[3],s=DW/3/108/2;
draw_primitive_begin(pr_linestrip);
for(i=0;i<=360;i+=2)draw_vertex(DW/2+lengthdir_x(108*s,i),DH/2+lengthdir_y(107*s,i));
draw_primitive_end();

DrawCircle(DW/2,DH/2,16,c_yellow,c_yellow,Now[0]/30,Now[0]/30,24,16);
DrawCircle(DW/2,DH/2,16,c_orange,c_orange,Now[0]/30,Now[0]/30,24,3);
var xx=DW/2+lengthdir_x(108*s,dir),yy=DH/2+lengthdir_y(107*s,dir);
DrawCircle(xx,yy,16,c_blue,c_blue,Now[0]/30,Now[0]/30,24,16);
DrawCircle(xx,yy,16,16743936,16743936,Now[0]/30,Now[0]/30,24,3);
draw_set_halign(fa_left);
draw_text(xx+20,yy,"Vênus");
draw_set_halign(fa_right);
draw_text(xx-20,yy,"dia "+string(round((dir mod 360)/360*224)));
draw_set_halign(fa_center);
Now[3]++;

dra_planet(96,DH/2,64*.7,1,-image_index,3,background_get_texture(tx_venus));
if BTech(MA,image_index,96,DH/2,64,"Vênus",16743936){Now[1]=-3;Now[2]=menu_Venus;PlaySom(sound2,0,VSom,0)}
if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=ini_teluricosview;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0;Now[3]=0}
ini_close();