with(obj_planet) scr_planetgui();

with(Player) {
    if (GUI != -1) {script_execute(GUI)} else if (object_index != obj_pbs01) {
        var p = PLANETA; //corpo celeste
        if (point_distance(x,y,p.x,p.y) > sy.DH/2) {
            x += lengthdir_x(.5,point_direction(x,y,p.x,p.y));
            y += lengthdir_y(.5,point_direction(x,y,p.x,p.y));
        }
        x += lengthdir_x(.5,point_direction(x,y,p.x,p.y)+90);
        y += lengthdir_y(.5,point_direction(x,y,p.x,p.y)+90);
        image_index++;
    }
}

draw_recursos();
script_execute(CNTR[0]);
script_execute(PESQ[0]);
scr_onda();
scr_view();

if (instance_number(obj_nvinimigo) == 0) Title = "VITÓRIA";
if (Player.Vida[0] <= 0) Title = "DERROTA";
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
        DRA = -1;
        GUI = scr_menu;
        Title = "";
        Now[0] = 0; Now[1] = 0; Now[2] = 0; Now[3] = 0;
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
        DRA = -1;
        GUI = scr_menu;
        Title = "";
        Now[0] = 0; Now[1] = 0; Now[2] = 0; Now[3] = 0;
    }
}
