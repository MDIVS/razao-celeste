///menu_Saturno()
Now[0]++;
draw_clear(0);
draw_set_alpha(image_index/30);
draw_background_tiled_ext(tx_null,0,0,1,1,2105344,image_index/30);
if (Botao_rect(DW*.2,DH*.2,DW*.8,DH*.8,16,"",4210432,c_white,1)) {
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
    VIEW_OBJECT = Player;
    ini_close();
    create_my_enemyes();
    PlaySom(sound1,0,VSom,0);
};
dra_planet(DW*.2+DH*.2+32,DH/2,DH*.2,1,image_index/3,image_index/6,PLANETA.TEXTURA);

var t = 'Saturno é o sexto planeta a partir do Sol e o segundo maior do Sistema Solar atrás de Júpiter. Pertencente ao grupo dos gigantes gasosos, possui cerca de 95 massas terrestres e orbita a uma distância média de 9,5 unidades astronômicas.';
var x1 = DW*.2+DH*.4+64, x2 = DW*.8-32;
draw_text_ext(round((x1+x2)/2),round(DH/2),t,13,x2-x1);

draw_text_colour(DW/2,32,PLANETA.Nome+", "+PLANETA.Descricao,c_yellow,c_orange,c_yellow,c_yellow,Now[0]/room_speed);

var switching = 0;
if (Botao_rect(DW*.2,DH*.8+16,DW*.4,DH*.8+48,16,"Anterior",4210432,c_white,1)) switching = -1;
if (Botao_rect(DW*.6,DH*.8+16,DW*.8,DH*.8+48,16,"Próximo",4210432,c_white,1)) switching = 1;
if (switching != 0) {
    var plan = instance_create(0,0,choose_planet(PLANETA.object_index,switching));
    with(PLANETA) instance_destroy();
    PLANETA = plan;
    PlaySom(sound1,0,VSom,0);
}

scr_syconfig();
draw_set_alpha(1);
