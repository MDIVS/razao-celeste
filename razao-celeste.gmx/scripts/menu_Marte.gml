///menu_Marte()
Now[0]++;
draw_clear(0);
draw_set_alpha(image_index/30);
draw_background_tiled_ext(tx_null,0,0,1,1,2105344,image_index/30);
if (Botao_rect(DW*.1,DH*.2,DW*.9,DH*.8,16,"",4210432,c_white,1)) {
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
};
dra_planet(DW/2-DH*.2-32,DH/2,DH*.2,1,image_index/3,image_index/6,PLANETA.TEXTURA);

draw_set_halign(fa_left);
var t = 'Marte é o quarto planeta a partir do Sol, o segundo menor do Sistema Solar. Batizado em homenagem ao deus romano da guerra, muitas vezes é descrito como o "Planeta Vermelho", porque o óxido de ferro predominante em sua superfície lhe dá uma aparência avermelhada.';
var x1 = DW*.2+DH*.4+64, x2 = DW*.8-32;
draw_text_ext(round(DW/2+32),round(DH/2),t,13,DW*.4-64);
draw_set_halign(fa_center);

draw_text_colour(DW/2,32,PLANETA.Nome+", "+PLANETA.Descricao,c_yellow,c_orange,c_yellow,c_yellow,image_index/room_speed);

if (Botao_rect(DW*.2,DH*.8+16,DW*.4,DH*.8+48,16,"Anterior",4210432,c_white,1)) {
    with(PLANETA) instance_destroy();
    PLANETA = instance_create(0,0,obj_Terra);
    PlaySom(sound1,0,VSom,0);
}

scr_syconfig();
draw_set_alpha(1);
