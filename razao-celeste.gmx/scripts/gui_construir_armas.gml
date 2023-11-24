///gui_construir_armas()
Now[0]++;
var ws = Player.Weap;
draw_background_tiled(bg_pesq,0,0);
draw_set_alpha(image_index/30);
_cntr_drawweaponsbuttons(ws);
if (Now[1] != -1) {var dba = ws[Now[1]]};

if (Now[1] == -1) {
    var t = "Toque em um slot para construir, vender ou modificar uma arma.";
    var h = string_height_ext(t,13,DW/4-64);
    draw_roundrect_colour_ext(DW*.75+16,DH/2-h/2-16,DW-16,DH/2+h/2+16,16,16,c_white,c_white,1);
    draw_text_ext(round(DW*.875),round(DH/2),t,13,DW/4-64);
} else {
    if (dba[0] == ascr_fuzil || dba[0] == ascr_mousefuzil) _cnstr_selectfuzil(dba);
    if (dba[0] == ascr_laser) _cnstr_selectlaser(dba);
    if (dba[0] == -1) {
        draw_roundrect_ext(DW*.75+16,DH/2-136,DW-16,DH/2+136,16,16,1);
        if (Botao_rect(DW*.75+32,DH/2-120,DW-32,DH/2-72,16,"",c_lime*(Now[2]=="Fuzil"),c_white,1)) {if (Now[2] != "Fuzil") {Now[2]="Fuzil"} else {Now[2]=""}};
        if (Botao_rect(DW*.75+32,DH/2-56,DW-32,DH/2-8,16,"",c_lime*(Now[2]=="Laser"),c_white,1)) {if (Now[2] != "Laser") {Now[2]="Laser"} else {Now[2]=""}};
        if (Botao_rect(DW*.75+32,DH/2+8,DW-32,DH/2+56,16,"",c_lime*(Now[2]=="Missil"),c_white,1)) {if (Now[2] != "Missil") {Now[2]="Missil"} else {Now[2]=""}};
        if (Botao_rect(DW*.75+32,DH/2+72,DW-32,DH/2+120,16,"",c_lime*(Now[2]=="Other"),c_white,1)) {if (Now[2] != "Other") {Now[2]="Other"} else {Now[2]=""}};
        
        var s = 32/sprite_get_height(spr_fuzil);
        draw_sprite_ext(spr_fuzil,0,DW*.875,DH/2-96,s,s,0,-1,image_index/30);
        //s = 32/sprite_get_height(spr_laser);
        draw_sprite_ext(spr_laser,0,DW*.875,DH/2-32,s,s,0,-1,image_index/30);
        
        if (Now[2] == "Fuzil") _cnstr_comprafuzil(dba);
        if (Now[2] == "Laser") _cnstr_compralaser(dba);
    }
}

if (Botao_rect(DW/2-64,DH-64,DW/2+64,DH-16,16,"Voltar",4210432,c_white,1)) {
    Now[0]=0; Now[1]=0; Now[2]="";
    GUI = scr_construcao;
    PlaySom(sound2,0,VSom,0);
}
draw_set_alpha(1);
