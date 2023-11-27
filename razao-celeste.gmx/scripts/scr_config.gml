#define scr_config
///scr_config()
draw_set_alpha(Now[0]/30);
VSom = Botao_rect100(DW*.2,DH/3,DW*.8,DH/3+40,VSom,DH*.066,"Som",4210432,c_aqua,1);
VMus = Botao_rect100(DW*.2,DH/3+50,DW*.8,DH/3+90,VMus,DH*.066,"Musica",4210432,c_blue,1);

ini_open("Salvo.ini");
if os_type==os_windows{
    var fullscreen = ini_read_real("Config","Fullscreen",1);
    var t = "Tela cheia";
    if fullscreen t= "Modo de janela";
    if B1(MA,DW/2-80,32,DW/2+80,64,t,-1){
        fullscreen=!fullscreen;
        ini_write_real("Config","Fullscreen",fullscreen);
        window_set_fullscreen(fullscreen);
        if !fullscreen window_set_size(DW,DH);
    }
}

if (BMus != -1) audio_sound_gain(BMus,VMus,0);
ini_write_real("Config","FDbg",FDbg);
ini_write_real("Config","VSom",VSom);
ini_write_real("Config","VMus",VMus);
ini_close();

draw_set_font(couriernewbold10);
if B1(MA,DW/2-48,DH-128,DW/2+48,DH-96,"CRÉDITOS",c_yellow){Now[1]=-3;Now[2]=scr_menu_creditos;PlaySom(sound1,0,VSom,0)};
draw_set_font(arialbold12);

if (Botao_rect(DW/4-64,DH-56,DW/4+64,DH-16,40,"Resetar",-1,c_silver,1) && Now[1]>0) {
    Now[1]=-3; Now[2]=gui_resetar;
    PlaySom(sound1,0,VSom,0);
}

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=scr_menu;PlaySom(sound1,0,VSom,0)};

if (Botao_rect(DW/4*3-64,DH-56,DW/4*3+64,DH-16,40,"Sair",-1,c_red,1) && Now[1]>0) game_end();

Now[0]=min(30,Now[0]+Now[1]);
if Now[0]<0 {GUI=Now[2]; Now[0]=0; Now[1]=3; Now[2]=0}

#define gui_resetar
///gui_resetar
draw_clear(0);
draw_set_alpha(Now[0]/30);

draw_set_font(algerian48);
draw_text_colour(DW/2,DH/3,"RESETAR JOGO?",c_orange,c_orange,c_orange,c_orange,Now[0]/30);
draw_set_font(arialbold12);
draw_text(DW/2,DH/3+36,"Esta ação é definitiva, irreversível!");

if (Botao_circle(DW/3*2,DH-160,80,"Não. Não#quero resetar!",c_.dkdkgray,c_lime,24,10,1) && Now[1]>0) {
    Now[1]=-3;
    Now[2] = scr_config;
    PlaySom(sound1,0,VSom,0);
}

if (Botao_circle(DW/3,DH-160,64,"Sim.#Resetar.",c_.dkdkgray,c_orange,24,8,1) && Now[1]>0) {
    file_delete("Salvo.ini");
    game_end();
}

Now[0]=min(30,Now[0]+Now[1]);
if (Now[0] < 0) {
    GUI = Now[2];
    Now[0]=0; Now[1]=1; Now[2]=0;
}
#define ini_config
sy.GUI=scr_config; sy.Now[3]=-1;