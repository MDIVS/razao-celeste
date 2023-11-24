///Hist_01()
///menu_Terra()
Now[0]++;
draw_background_tiled_ext(tx_null,0,0,1,1,2105344,image_index/30);
if (Botao_rect(DW*.2,DH*.2,DW*.8,DH*.8,16,"",4210432,c_white,1)) {
    scr_syconfig();
    draw_set_alpha(1);
    ini_open("Salvo.ini");
    Player = instance_create(0,0,ini_read_real("Player","ObjectId",obj_pbs01));
    Player.ACT = trajetoriaorbital;
    Player.x = DH/2;
    Player.y = 0;
    GUI = scr_sygui;
    DRA = scr_sydra;
    Now[0]=0;
    MOEDAS = ini_read_real("GLOBALS","MOEDAS",250);
    MERITO = ini_read_real("GLOBALS","MERITO",2);
    view_xview = -view_wview/2; view_yview = -view_hview/2;
    VIEW_OBJECT = PLANETA;
    PLANETA.GUI = mi_001_act;
    ini_close();
    create_my_enemyes();
    PlaySom(sound1,0,VSom,0);
};
if (Botao_rect(DW*.4,DH*.8+16,DW*.6,DH*.8+48,16,"Voltar",4210432,c_white,1)) {PlaySom(sound2,0,VSom,0); GUI=scr_planselect};
var t = 'TERRA##Nossos satélites detectaram um distúrbio no cinturão de asteróides, capitão. Foi uma questão de horas para compreendermos: estamos sendo atacados!!!##Precisamos nos defender com o que temos, esses objetos não identificados estão em rota de colisão com a Terra e, se isso ocorrer, todos nós morreremos!##4,5 bilhões de anos de Mundo se tornarão TORRESMO.#Chega de papo: Toque na tela para continuar.';
var x1 = DW*.2+64, x2 = DW*.8-32;
draw_text_ext(round((x1+x2)/2),round(DH/2),t,13,x2-x1);

draw_text_colour(DW/2,32,PLANETA.Nome+", "+PLANETA.Descricao,c_yellow,c_orange,c_yellow,c_yellow,Now[0]/room_speed);
