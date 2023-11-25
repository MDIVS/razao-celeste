with(obj_planet) scr_planetgui();
with(obj_pbs01) if GUI!=-1script_execute(GUI);
with(obj_pee) if GUI!=-1script_execute(GUI);
with(obj_pmg) gui_pmg();
//with(obj_ppeao)if GUI!=-1script_execute(GUI);
//with(obj_ipeao) if GUI!=-1script_execute(GUI);
with(obj_iss02) if GUI!=-1script_execute(GUI);

scr_construcao();
//script_execute(PESQ[0]);
scr_view();

if (instance_number(obj_nvinimigo) == 0) Title = "VITÓRIA";
if !instance_exists(obj_nvplayer) Title = "DERROTA";
if (Title == "VITÓRIA") {
    draw_set_alpha(.5);
    draw_rectangle_colour(32,32,DW-32,DH-32,0,0,0,0,0);
    draw_set_alpha(1);
    draw_set_font(font_CooperBlack);
    draw_text_colour(round(DW/2),96,"Vitória",c_orange,c_orange,c_orange,c_orange,1);
    draw_set_font(font_CourierNew);
    if (Botao_rect(round(DW/2)-96,DH-96,round(DW/2)+96,DH-64,16,"Retornar ao menu",-1,c_lime,1)) {
        with(all) {
            if (!persistent) instance_destroy();
        };
        VIEW_OBJECT=-1;
        DRA = -1;
        GUI = scr_menu;
        Title = "";
        Now[0] = 0; Now[1] = 1; Now[2] = 0; Now[3] = 0;
    }
}
if (Title == "DERROTA") {
    draw_set_alpha(.5);
    draw_rectangle_colour(32,32,DW-32,DH-32,0,0,0,0,0);
    draw_set_alpha(1);
    draw_set_font(font_CooperBlack);
    draw_text_colour(round(DW/2),96,"Derrota",c_orange,c_orange,c_orange,c_orange,1);
    draw_set_font(font_CourierNew);
    if (Botao_rect(round(DW/2)-96,DH-96,round(DW/2)+96,DH-64,16,"Retornar ao menu",-1,c_lime,1)) {
        with(all) {
            if (!persistent) instance_destroy();
        };
        VIEW_OBJECT=-1;
        DRA = -1;
        GUI = scr_menu;
        Title = "";
        Now[0] = 0; Now[1] = 1; Now[2] = 0; Now[3] = 0;
    }
}

if Bspr(MA,spr_pause,0,DW-48,48){Now[1]=-3;Now[2]=gui_pause;Now[3]=scr_sydra;PlaySom(sound1,0,VSom,0)}
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{DRA=-1;GUI=Now[2];Now[0]=0;Now[1]=3;Now[2]=0}
