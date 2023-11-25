#define menu_Saturno
///menu_Saturno
ini_open("Salvo.ini");
draw_set_alpha(Now[0]/30);

dra_planet(DW/2,DH/2,96*.7,1,image_index,25,background_get_texture(tx_saturno));
if BTech(MA,image_index,DW/2,DH/2,96,"Explorar",16743936){
    if VMus>0&&audio_is_playing(BMus)audio_sound_gain(BMus,0,1);
    Now[1]=-1;Now[2]=ini_Exploration;PlaySom(sound2,0,VSom,0);
}

if BTech(MA,image_index,96,DH/4*3,64,"Órbita",16743936){Now[1]=-3;Now[2]=saturno_orbita;PlaySom(sound2,0,VSom,0)}

draw_set_valign(fa_top);
draw_text(DW/2,20,"Planeta Saturno");
draw_text(DW/2,DH/2-128,"Missão - Defenda a Estação");
draw_set_font(arial8);
draw_text_ext(DW/2,48,'Saturno é o sexto planeta a partir do Sol e o segundo maior do Sistema Solar. Pertencente ao grupo dos gigantes gasosos, possui cerca de 95 massas terrestres e orbita a uma distância média de 9,5 unidades astronômicas',12,DW*.8);
draw_text_ext(DW/2,DH/2+112,'Ondas de ataques inimigos querem ouvir o "boom" de sua estação!#Defenda sua Estação Espacial, custe o que custar!',12,192);
draw_set_valign(fa_middle);
draw_set_font(arialbold12);

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=ini_gasososview;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}
ini_close();

#define saturno_orbita
ini_open("Salvo.ini");
draw_set_alpha(Now[0]/30);
draw_text(DW/2,40,"Órbita do Planeta Saturno");

var i,dir=360/365*Now[3],s=DW/3/1513/2;
draw_primitive_begin(pr_linestrip);
for(i=0;i<=360;i+=2)draw_vertex(DW/2+lengthdir_x(1513*s,i),DH/2+lengthdir_y(1353*s,i));
draw_primitive_end();

DrawCircle(DW/2-8,DH/2,16,c_yellow,c_yellow,Now[0]/30,Now[0]/30,24,16);
DrawCircle(DW/2-8,DH/2,16,c_orange,c_orange,Now[0]/30,Now[0]/30,24,3);
var xx=DW/2+lengthdir_x(1513*s,dir),yy=DH/2+lengthdir_y(1353*s,dir);
DrawCircle(xx,yy,16,6319232,6319232,Now[0]/30,Now[0]/30,24,16);
DrawCircle(xx,yy,16,3494272,3494272,Now[0]/30,Now[0]/30,24,3);
draw_set_halign(fa_left);
draw_text(xx+20,yy,"Saturno");
draw_set_halign(fa_right);
draw_text(xx-20,yy,"dia "+string(round((dir mod 360)/360*10759)));
draw_set_halign(fa_center);
Now[3]++;

dra_planet(96,DH/4*3,64*.7,1,image_index,25,background_get_texture(tx_saturno));
if BTech(MA,image_index,96,DH/4*3,64,"Saturno",16743936){Now[1]=-3;Now[2]=menu_Saturno;PlaySom(sound2,0,VSom,0)}
if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=ini_gasososview;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0;Now[3]=0}
ini_close();