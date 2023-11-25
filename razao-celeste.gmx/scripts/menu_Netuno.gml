#define menu_Netuno
///menu_Netuno
ini_open("Salvo.ini");
draw_set_alpha(Now[0]/30);

dra_planet(DW/2,DH/2,96*.7,1,image_index,25,background_get_texture(tx_netuno));
if BTech(MA,image_index,DW/2,DH/2,96,"Explorar",16743936){
    if VMus>0&&audio_is_playing(BMus)audio_sound_gain(BMus,0,1);
    Now[1]=-1;Now[2]=ini_Exploration;PlaySom(sound2,0,VSom,0);
}

if BTech(MA,image_index,96,DH/4*3,64,"Órbita",16743936){Now[1]=-3;Now[2]=orbita_netuno;PlaySom(sound2,0,VSom,0)}

draw_set_valign(fa_top);
draw_text(DW/2,20,"Planeta Netuno");
draw_text(DW/2,DH/2-128,"Missão - Defenda a Estação");
draw_set_font(arial8);
draw_text_ext(DW/2,48,'Netuno ou Neptuno é o oitavo planeta do Sistema Solar, o último a partir do Sol desde a reclassificação de Plutão para a categoria de planeta anão, em 2006. Pertencente ao grupo dos gigantes gasosos, possui um tamanho ligeiramente menor que o de Urano, mas maior massa, equivalente a 17 massas terrestres',12,DW*.8);
draw_text_ext(DW/2,DH/2+112,'Ondas de ataques inimigos querem ouvir o "boom" de sua estação!#Defenda sua Estação Espacial, custe o que custar!',12,192);
draw_set_valign(fa_middle);
draw_set_font(arialbold12);

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=ini_gasososview;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}
ini_close();

#define orbita_netuno
ini_open("Salvo.ini");
draw_set_alpha(Now[0]/30);
draw_text(DW/2,40,"Órbita do Planeta Netuno");

var i,dir=360/365*Now[3],s=DW/3/4540/2;
draw_primitive_begin(pr_linestrip);
for(i=0;i<=360;i+=2)draw_vertex(DW/2+lengthdir_x(4540*s,i),DH/2+lengthdir_y(4460*s,i));
draw_primitive_end();

DrawCircle(DW/2,DH/2,16,c_yellow,c_yellow,Now[0]/30,Now[0]/30,24,16);
DrawCircle(DW/2,DH/2,16,c_orange,c_orange,Now[0]/30,Now[0]/30,24,3);
var xx=DW/2+lengthdir_x(4540*s,dir),yy=DH/2+lengthdir_y(4460*s,dir);
DrawCircle(xx,yy,16,9801059,9801059,Now[0]/30,Now[0]/30,24,16);
DrawCircle(xx,yy,16,15721375,15721375,Now[0]/30,Now[0]/30,24,3);
draw_set_halign(fa_left);
draw_text(xx+20,yy,"Netuno");
draw_set_halign(fa_right);
draw_text(xx-20,yy,"dia "+string(round((dir mod 360)/360*60190)));
draw_set_halign(fa_center);
Now[3]++;

dra_planet(96,DH/4*3,64*.7,1,image_index,25,background_get_texture(tx_netuno));
if BTech(MA,image_index,96,DH/4*3,64,"Netuno",16743936){Now[1]=-3;Now[2]=menu_Netuno;PlaySom(sound2,0,VSom,0)}
if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=ini_gasososview;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0;Now[3]=0}
ini_close();