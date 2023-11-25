#define tip_menu
draw_set_alpha(min(sy.Now[0]/30,.5));
draw_rectangle_colour(0,0,DW,DH,0,0,0,0,0);
draw_set_alpha(sy.Now[0]/30);

draw_set_font(arial8);
var t="Nosso principal objetivo é disponibilizar para você, enquanto jogador, estudante e/ou lecionador, mais uma ferramenta lúdica para auxiliar a transmissão de conhecimento e a compreensão de conteúdos sobre Astronomia e Astronáutica. Este jogo faz parte de um projeto, o projeto RAZÃO CELESTE: Um jogo sobre Astronomia. Esperamos que goste.";
if BTouchToContinue(MA,DW/2-128*1.2,DH/2-49-16-32,DW/2+128*1.2,DH/2+49+16+32,t,14,32,16743936,2101248){
    Tip_menu=Tip_menu1;
    GUI=Tip_menu1; PlaySom(sound1,0,VSom,0);
};
draw_set_font(arialbold12);

draw_set_colour(16743936);
draw_text(DW/2,DH/2-49-16,"Bem vindo(a) à RAZÃO CELESTE!");
draw_text(DW/2,DH/2+49+16,"Toque para continuar");
draw_set_colour(c_white);

sy.Now[1]=3;sy.Now[2]=-1;

#define Tip_menu1
ini_open("Salvo.ini");
draw_set_alpha(min(sy.Now[0]/30,.75));
draw_rectangle_colour(0,0,DW,DH,0,0,0,0,0);
draw_set_alpha(1);

BAstrocoin(DW/2,32,ini_read_real("OBA","Astrocoins",0));
draw_set_colour(16743936);
draw_arrow(DW/2,128,DW/2,60,16);
if device_mouse_check_button_pressed(0,mb_left)||keyboard_check_pressed(vk_space)||keyboard_check_pressed(vk_enter){
    ini_write_real("OBA","Astrocoins",6);
    Tip_menu=Tip_menu2;
    GUI=Tip_menu2;
    PlaySom(sound4,0,VSom,0);
};

var t = "Toque na tela";
if (os_type==os_windows) t = "Tecle enter";
draw_text(DW/2,DH/2,"Estes são os seus astrocoins,#moeda principal do jogo,#tome alguns Astrocoins:#"+t+" para pegá-los.");
draw_set_colour(c_white);

sy.Now[1]=3;sy.Now[2]=-1;
ini_close();

#define Tip_menu2
ini_open("Salvo.ini");
draw_set_alpha(min(sy.Now[0]/30,.75));
draw_rectangle_colour(0,0,DW,DH,0,0,0,0,0);
draw_set_alpha(sy.Now[0]/30);

draw_set_colour(16743936);
if Tip_navescreen==-1{Tip_menu=Tip_menu3;GUI=Tip_menu3;exit};

draw_text(DW/2,(DH-128-96)/2,"Você precisa equipar uma arma#em sua espaçonave, comandante.");
draw_set_colour(c_white);

if B4(MA,DW/2,DH-128,96+8*lengthdir_x(1,10*image_index),"",16743936,2101248){sy.Now[1]=-3;sy.Now[2]=ini_navescreen;PlaySom(sound1,0,VSom,0)};
draw_sprite_ext(spr_spaceship128,0,DW/2,DH-128,1,1,90,16743936,1);
if sy.Now[2]!=navescreen{sy.Now[1]=3;sy.Now[2]=-1};

ini_close();

#define Tip_menu3
ini_open("Salvo.ini");
draw_set_alpha(min(sy.Now[0]/30,.75));
draw_rectangle_colour(0,0,DW,DH,0,0,0,0,0);
draw_set_alpha(sy.Now[0]/30);

draw_set_colour(16743936);
if device_mouse_check_button_pressed(0,mb_left)||keyboard_check_pressed(vk_space)||keyboard_check_pressed(vk_enter){
    ini_write_real("Tutorial","Tip_menu",0);
    Tip_menu=-1;
    GUI=-1;
};

draw_text_ext(DW/2,(DH-128-96)/2,"Perfeito!#Agora que você já equipou a sua arma, você pode responder à perguntas do nosso simulado, ganhando mais Astrocoins e melhorando ainda mais as espaçonaves, ou, inicie o jogo, explorando o Sistema Solar com elas.",18,DW/3);
draw_set_colour(c_white);

if B4(MA,DW/2+200,DH-128,80+8*lengthdir_x(1,10*image_index),"Sistema#Solar",16743936,2101248){Now[1]=-3;Now[2]=scr_sistema_solar;PlaySom(sound1,0,VSom,0)};
if B4(MA,DW/2-200,DH-128,80+8*lengthdir_x(1,10*image_index),"Simulado#OBA",16743936,2101248){Now[1]=-3;Now[2]=OBA_selectalevel;PlaySom(sound1,0,VSom,0)};

ini_close();