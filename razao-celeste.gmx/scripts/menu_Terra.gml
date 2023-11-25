#define menu_Terra
///menu_Terra
ini_open("Salvo.ini");
draw_set_alpha(Now[0]/30);

dra_planet(DW/2,DH/2,96*.7,1,image_index,23,background_get_texture(tx_terra));
if BTech(MA,image_index,DW/2,DH/2,96,"Explorar",16743936){
    Now[1]=-3; Now[2]=ini_lixoespacial;
    PlaySom(sound2,0,VSom,0);
    if audio_is_playing(BMus)audio_sound_gain(BMus,0,333);
}

/*
if BTech(MA,image_index,96,DH/4,64,"Detalhes",16743936){Now[1]=-3; Now[2]=ini_lixoespacial;
    PlaySom(sound2,0,VSom,0);
    if audio_is_playing(BMus)audio_sound_gain(BMus,0,333);
}
*/

dra_planet(96,DH/4*3,64*.7,1,image_index,0,background_get_texture(tx_lua));
if BTech(MA,image_index,96,DH/2,64,"Órbita",16743936){Now[1]=-3;Now[2]=terra_orbita;PlaySom(sound2,0,VSom,0)}
if BTech(MA,image_index,96,DH/4*3,64,"Lua",16743936){Now[1]=-3;Now[2]=terra_lua;PlaySom(sound2,0,VSom,0)}

draw_set_valign(fa_top);
draw_text(DW/2,20,"Planeta Terra");
draw_text(DW/2,DH/2-128,"Missão - Lixo Espacial");
draw_set_font(arial8);
draw_text_ext(DW/2,48,'A Terra é o terceiro planeta mais próximo do Sol, o mais denso e o quinto maior dos oito planetas do Sistema Solar. É também o maior dos quatro planetas telúricos. É por vezes designada como Mundo ou Planeta Azul',12,DW*.8);
draw_text_ext(DW/2,DH/2+112,'Colete todo lixo espacial preso na órbita da Terra antes que o tempo se esgote!',12,192);
draw_set_valign(fa_middle);
draw_text_ext(((DW/2+96+40)+(DW-40))/2,DH/2,'O lixo espacial é composto por restos de naves, tanques de combustíveis, satélites que foram desativados, ferramentas perdidas por astronautas e objetos metálicos que ficam girando ao redor da Terra. Todos esses objetos podem provocar danos às novas naves que são colocadas em órbitas e também aos astronautas',12,(DW-40)-(DW/2+96+40));
draw_set_font(arialbold12);

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=ini_teluricosview;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);
if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}
ini_close();

#define terra_orbita
ini_open("Salvo.ini");
draw_set_alpha(Now[0]/30);
draw_text(DW/2,40,"Órbita do Planeta Terra");

var i,dir=360/365*Now[3],s=DW/3/152/2;
draw_primitive_begin(pr_linestrip);
for(i=0;i<=360;i+=2)draw_vertex(DW/2+lengthdir_x(152*s,i),DH/2+lengthdir_y(147*s,i));
draw_primitive_end();

DrawCircle(DW/2,DH/2,16,c_yellow,c_yellow,Now[0]/30,Now[0]/30,24,16);
DrawCircle(DW/2,DH/2,16,c_orange,c_orange,Now[0]/30,Now[0]/30,24,3);
var xx=DW/2+lengthdir_x(152*s,dir),yy=DH/2+lengthdir_y(147*s,dir);
DrawCircle(xx,yy,16,c_blue,c_blue,Now[0]/30,Now[0]/30,24,16);
DrawCircle(xx,yy,16,16743936,16743936,Now[0]/30,Now[0]/30,24,3);
draw_set_halign(fa_left);
draw_text(xx+20,yy,"Terra");
draw_set_halign(fa_right);
draw_text(xx-20,yy,"dia "+string(round((dir mod 360)/360*365)));
draw_set_halign(fa_center);
Now[3]++;

dra_planet(96,DH/2,64*.7,1,image_index,23,background_get_texture(tx_terra));
dra_planet(96,DH/4*3,64*.7,1,image_index,0,background_get_texture(tx_lua));
if BTech(MA,image_index,96,DH/2,64,"Terra",16743936){Now[1]=-3;Now[2]=menu_Terra;PlaySom(sound2,0,VSom,0)}
if BTech(MA,image_index,96,DH/4*3,64,"Lua",16743936){Now[1]=-3;Now[2]=terra_lua;PlaySom(sound2,0,VSom,0)}
if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=ini_teluricosview;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0;Now[3]=0}
ini_close();

#define terra_lua
ini_open("Salvo.ini");
draw_set_alpha(Now[0]/30);
draw_text(DW/2,40,"Lua - Satélite Natural do Planeta Terra");

var i,dir=360/365*Now[3],s=DW/3/152/2;
draw_primitive_begin(pr_linestrip);
for(i=0;i<=360;i+=2)draw_vertex(DW/2+lengthdir_x(152*s,i),DH/2+lengthdir_y(147*s,i));
draw_primitive_end();

DrawCircle(DW/2,DH/2,16,c_blue,c_blue,Now[0]/30,Now[0]/30,24,16);
DrawCircle(DW/2,DH/2,16,16743936,16743936,Now[0]/30,Now[0]/30,24,3);
var xx=DW/2+lengthdir_x(152*s,dir),yy=DH/2+lengthdir_y(147*s,dir);
DrawCircle(xx,yy,16,c_gray,c_gray,Now[0]/30,Now[0]/30,24,16);
DrawCircle(xx,yy,16,c_silver,c_silver,Now[0]/30,Now[0]/30,24,3);
draw_set_halign(fa_left);
draw_text(DW/2+20,DH/2,"Terra");
draw_text(xx+20,yy,"Lua");
draw_set_halign(fa_right);
draw_text(xx-20,yy,"dia "+string(round((dir mod 360)/360*27)));
draw_set_halign(fa_center);
Now[3]++;

draw_set_font(arial8);
draw_text_ext(((DW/3*2+40)+(DW-40))/2,DH/2,'A Lua é um satélite natural da Terra e o quinto maior do Sistema Solar. É o maior satélite natural de um planeta no sistema solar em relação ao tamanho do seu corpo primário, tendo 27% do diâmetro e 60% da densidade da Terra',12,(DW-40)-(DW/3*2+40));
draw_set_font(arialbold12);

dra_planet(96,DH/4*3,64*.7,1,image_index,23,background_get_texture(tx_terra));
if BTech(MA,image_index,96,DH/2,64,"Orbita",16743936){Now[1]=-3;Now[2]=terra_orbita;PlaySom(sound2,0,VSom,0)}
if BTech(MA,image_index,96,DH/4*3,64,"Terra",16743936){Now[1]=-3;Now[2]=menu_Terra;PlaySom(sound2,0,VSom,0)}
if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=ini_teluricosview;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0;Now[3]=0}
ini_close();