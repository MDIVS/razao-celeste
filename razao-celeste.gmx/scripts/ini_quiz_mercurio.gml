#define ini_quiz_mercurio
GUI=choose(quiz_mercurio_touchme,quiz_mercurio_touchme2,quiz_mercurio_dias,quiz_mercurio_orbita,quiz_mercurio_ua);
Now[0]=0; Now[1]=3; Now[2]=0;

TIMER = 30*60*5;

#define quiz_mercurio_touchme
draw_set_alpha(Now[0]/30);

if BPlanet(MA,DW/5*1,DH*.66,DW*.1*.38,7,image_index/58*3,background_get_texture(tx_mercurio))&&Now[1]>0{Now[1]=-3;Now[2]=quiz_mercurio_correct;voz("Mercúrio",voz_mercurio)}
if BPlanet(MA,DW/5*2,DH*.66,DW*.1*.94,3,-image_index/243*3,background_get_texture(tx_venus))&&Now[1]>0{Now[1]=-3;Now[2]=quiz_mercurio_wrong;voz("Vênus",voz_venus)}
if BPlanet(MA,DW/5*3,DH*.66,DW*.1,23.5,image_index*3,background_get_texture(tx_terra))&&Now[1]>0{Now[1]=-3;Now[2]=quiz_mercurio_wrong;voz("Terra",voz_terra)}
if BPlanet(MA,DW/5*4,DH*.66,DW*.1*.53,25,image_index*3,background_get_texture(tx_marte))&&Now[1]>0{Now[1]=-3;Now[2]=quiz_mercurio_wrong;voz("Marte",voz_marte)}

draw_set_valign(fa_top);
draw_text(DW/2,20,"Quiz Mercúrio");
draw_set_font(arial8);
draw_text(DW/2,48,'Responda corretamente e restaure a energia');
draw_set_valign(fa_middle);
draw_set_font(arialbold12);
draw_text(DW/2,DH*.33,'Toque no planeta Mercúrio');

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=end_quiz_mercurio;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}

#define quiz_mercurio_touchme2
draw_set_alpha(Now[0]/30);

draw_set_colour(16743936);
if BPlanet(MA,DW/5*3,DH*.66,DW*.1*.38,7,image_index/58*3,-1)&&Now[1]>0{Now[1]=-3;Now[2]=quiz_mercurio_correct;voz("Mercúrio",voz_mercurio)}
if BPlanet(MA,DW/5*1,DH*.66,DW*.1*.94,3,-image_index/243*3,-1)&&Now[1]>0{Now[1]=-3;Now[2]=quiz_mercurio_wrong;voz("Vênus",voz_venus)}
if BPlanet(MA,DW/5*4,DH*.66,DW*.1,23.5,image_index*3,-1)&&Now[1]>0{Now[1]=-3;Now[2]=quiz_mercurio_wrong;voz("Terra",voz_terra)}
if BPlanet(MA,DW/5*2,DH*.66,DW*.1*.53,25,image_index*3,-1)&&Now[1]>0{Now[1]=-3;Now[2]=quiz_mercurio_wrong;voz("Marte",voz_marte)}
draw_set_colour(c_white);

draw_set_valign(fa_top);
draw_text(DW/2,20,"Quiz Mercúrio");
draw_set_font(arial8);
draw_text(DW/2,48,'Responda corretamente e restaure a energia');
draw_set_valign(fa_middle);
draw_set_font(arialbold12);
draw_text(DW/2,DH*.33,'Estes são planetas do Sistema Solar, algo deu errado e não se pôde mostrar suas cores.#A única forma de diferenciá-los é pelo tamanho de cada um.#Toque no planeta Mercúrio');

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=end_quiz_mercurio;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}

#define quiz_mercurio_dias
draw_set_alpha(Now[0]/30);

if B2(MA,DW/3,DH/3*2,DW/10+32,"",16743936){Now[1]=-3;Now[2]=quiz_mercurio_correct}
if B2(MA,DW/3*2,DH/3*2,DW/10+32,"",16743936){Now[1]=-3;Now[2]=quiz_mercurio_wrong}

draw_set_font(couriernewbold10);
draw_orbita_planets(DW/3,DH/3*2,DW/5/116,116/2,.205,46,88,Now[3],c_yellow,c_orange,c_blue,16743936);
draw_orbita_names(DW/3,DH/3*2,DW/5/116,116/2,.205,46,88,Now[3],"Sol","?");
draw_orbita_days(DW/3,DH/3*2,DW/5/116,116/2,.205,46,88,Now[3]);

draw_orbita_planets(DW/3*2,DH/3*2,DW/5/435,435/2,.093,207,687,Now[3],c_yellow,c_orange,c_blue,16743936);
draw_orbita_names(DW/3*2,DH/3*2,DW/5/435,435/2,.093,207,687,Now[3],"Sol","?");
draw_orbita_days(DW/3*2,DH/3*2,DW/5/435,435/2,.093,207,687,Now[3]);
draw_set_font(arialbold12);

draw_set_valign(fa_top);
draw_text(DW/2,20,"Quiz Mercúrio");
draw_set_font(arial8);
draw_text(DW/2,48,'Responda corretamente e restaure a energia');
draw_set_valign(fa_middle);
draw_set_font(arialbold12);
draw_text(DW/2,DH*.33,'As ilustrações abaixo representam o período orbital (em dias terrestes) de dois planetas do Sistema Solar.#Qual delas melhor representa o período orbital de Mercúrio? Toque nela.');

Now[3]++;
if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=end_quiz_mercurio;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}

#define quiz_mercurio_orbita
draw_set_alpha(Now[0]/30);

if B2(MA,DW/3,DH/3*2,DW/10+32,"",16743936){Now[1]=-3;Now[2]=quiz_mercurio_wrong}
if B2(MA,DW/3*2,DH/3*2,DW/10+32,"",16743936){Now[1]=-3;Now[2]=quiz_mercurio_correct}

draw_set_font(couriernewbold10);
draw_orbita(DW/3*2,DH/3*2,DW/5/116,116/2,.205,46,88,Now[3]);
draw_orbita_planets(DW/3*2,DH/3*2,DW/5/116,116/2,.205,46,88,Now[3],c_yellow,c_orange,c_blue,16743936);
draw_orbita_names(DW/3*2,DH/3*2,DW/5/116,116/2,.205,46,88,Now[3],"Sol","?");

draw_orbita(DW/3,DH/3*2,DW/5/299,299/2,.016,147,365,Now[3]);
draw_orbita_planets(DW/3,DH/3*2,DW/5/299,299/2,.016,147,365,Now[3],c_yellow,c_orange,c_blue,16743936);
draw_orbita_names(DW/3,DH/3*2,DW/5/299,299/2,.016,147,365,Now[3],"Sol","?");
draw_set_font(arialbold12);

draw_set_valign(fa_top);
draw_text(DW/2,20,"Quiz Mercúrio");
draw_set_font(arial8);
draw_text(DW/2,48,'Responda corretamente e restaure a energia');
draw_set_valign(fa_middle);
draw_set_font(arialbold12);
draw_text(DW/2,DH*.33,'As ilustrações abaixo representam a órbita de dois planetas do Sistema Solar.#Você pode diferenciar cada uma por sua respectiva excêntricidade da óbita.#Qual delas melhor representa a órbita de Mercúrio? Toque nela.');

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=end_quiz_mercurio;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}
Now[3]++;

#define quiz_mercurio_ua
draw_set_alpha(Now[0]/30);

if B2(MA,DW/3,DH/3*2,DW/10+48,"",16743936){Now[1]=-3;Now[2]=quiz_mercurio_wrong}
if B2(MA,DW/3*2,DH/3*2,DW/10+48,"",16743936){Now[1]=-3;Now[2]=quiz_mercurio_correct}

draw_set_font(couriernewbold10);
draw_orbita_planets(DW/3*2,DH/3*2,DW/5/116,116/2,.205,46,88,Now[3],c_yellow,c_orange,c_blue,16743936);
draw_orbita_names(DW/3*2,DH/3*2,DW/5/116,116/2,.205,46,88,Now[3],"Sol","?");
draw_orbita_distances(DW/3*2,DH/3*2,DW/5/116,116/2,.205,46,88,Now[3]);

draw_orbita_planets(DW/3,DH/3*2,DW/5/215,215/2,.006,107,224,Now[3],c_yellow,c_orange,c_blue,16743936);
draw_orbita_names(DW/3,DH/3*2,DW/5/215,215/2,.006,107,224,Now[3],"Sol","?");
draw_orbita_distances(DW/3,DH/3*2,DW/5/215,215/2,.006,107,224,Now[3]);
draw_set_font(arialbold12);

draw_set_valign(fa_top);
draw_text(DW/2,20,"Quiz Mercúrio");
draw_set_font(arial8);
draw_text(DW/2,48,'Responda corretamente e restaure a energia');
draw_set_valign(fa_middle);
draw_set_font(arialbold12);
draw_text(DW/2,DH*.33,'As ilustrações abaixo representam a órbita de dois planetas do Sistema Solar.#Você pode diferenciar cada uma por seus respectivos periélios e afélios.#Qual delas melhor representa a órbita de Mercúrio? Toque nela.');

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=end_quiz_mercurio;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}


Now[3]++;

#define quiz_mercurio_wrong
draw_set_alpha(Now[0]/30);

draw_rectangle_colour(0,0,DW,DH,4129,4129,4129,4129,0);

draw_text(DW/2,64,"Você errou!#Tente novamente, tente quantas vezes puder!");
draw_text(DW/2,DH-64,"Toque na tela para continuar");

if device_mouse_check_button_pressed(0,mb_left){Now[1]=-3;Now[2]=menu_Mercurio}
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}

#define quiz_mercurio_correct
draw_set_alpha(Now[0]/30);

draw_rectangle_colour(0,0,DW,DH,2105344,2105344,2105344,2105344,0);

draw_text(DW/2,64,"Correto!#A energia foi acrescida");
draw_text(DW/2,DH-64,"Toque na tela para continuar");

if device_mouse_check_button_pressed(0,mb_left){Now[1]=-3;Now[2]=menu_Mercurio;ini_open("Salvo.ini");ini_write_real("GLOBALS","ENERGY",min(ini_read_real("GLOBALS","ENERGY",0)+1,8));ini_close()}
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}

#define end_quiz_mercurio
GUI=menu_Mercurio;
Now[0]=0; Now[1]=3; Now[2]=0; Now[3]=0;

TIMER=0;

with all{if!persistent instance_destroy()}
PLANETA=instance_create(0,0,obj_Mercurio);