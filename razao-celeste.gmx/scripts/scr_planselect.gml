///scr_planselect()
if (PLANETA.object_index == obj_Mercurio) {menu_Mercurio(); exit};
if (PLANETA.object_index == obj_Venus) {menu_Venus(); exit};
if (PLANETA.object_index == obj_Terra) {menu_Terra(); exit};
if (PLANETA.object_index == obj_Marte) {menu_Marte(); exit};
Now[0]++;
draw_clear(0);
draw_set_alpha(Now[0]/room_speed);
draw_set_font(font_CooperBlack);
draw_text_colour(DW/2,32,PLANETA.Nome+", "+PLANETA.Descricao,c_yellow,c_orange,c_yellow,c_yellow,Now[0]/room_speed);

dra_planet(DW/2,DH/2,DH/4,1,image_index/3,image_index/6,PLANETA.TEXTURA);

if (Botao_rect(DW/2-150,DH-80,DW/2+150,DH-32,96,"ACEITAR MISSÃO",c_orange,c_lime,1)) {
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
    exit;
}

if (Botao_rect(DW/2-220,DH-80,DW/2-172,DH-32,48,"<",c_orange,c_lime,1)) {
    var plan = instance_create(0,0,choose_planet(PLANETA.object_index,-1));
    with(PLANETA) instance_destroy();
    PLANETA = plan;
    ini_open("Salvo.ini");
    ini_write_real("PLANETA","MENU",PLANETA.object_index);
    ini_close();
}

if (Botao_rect(DW/2+172,DH-80,DW/2+220,DH-32,48,">",c_orange,c_lime,1)) {
    var plan = instance_create(0,0,choose_planet(PLANETA.object_index,1));
    with(PLANETA) instance_destroy();
    PLANETA = plan;
    ini_open("Salvo.ini");
    ini_write_real("PLANETA","MENU",PLANETA.object_index);
    ini_close();
}
draw_set_font(font_CourierNew);

scr_syconfig();
draw_set_alpha(1);
