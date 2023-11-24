///scr_construcao()
if (Title != "") exit;
if (sy.GUI != scr_construcao) {
    var xx = sy.DW/2-24;
    var yy = sy.DH-32;
    
    if (scr_buttonspr(xx,yy,spr_ferramenta,0,c_white,c_gray,1)) {
        DRA = -1;
        GUI = scr_construcao;
        PlaySom(sound1,0,VSom,0);
    }
    
    exit;
};

draw_background_tiled(bg_pesq,0,0);
draw_set_alpha(image_index/30);
draw_set_valign(fa_top);
var xx=round(DW*.3), w=round(DW*.25);
var s = min(w*.66/sprite_get_width(spr_cnstr_armas),w*.66/sprite_get_height(spr_cnstr_armas));
var yy=round(DH*.2), h=round(sprite_get_height(spr_cnstr_armas)*s);
var t = "ARMAS##ELES querem impedir o avanço de suas pesquisas, e você precisa reagir.##Não poupe ninguém! Construa uma arma.##Construções duram 15 segundos.";
if (Botao_rect(xx-w/2,yy,xx+w/2,DH-80,16,"",4210432,c_white,1)) {Now[1]=1; PlaySom(sound1,0,VSom,0)};
draw_sprite_ext(spr_cnstr_armas,0,xx,yy+h/2,s*.8,s*.8,0,-1,image_index/30);
draw_text_ext(xx,yy+h+10,t,13,w-32);

xx=round(DW*.7);
s = min(w*.66/sprite_get_width(spr_cnstr_naves),w*.66/sprite_get_height(spr_cnstr_naves));
yy=round(DH*.2); h=round(sprite_get_height(spr_cnstr_armas)*s);
t = "NAVES##Ninguém vence só.#Quando a temperatura subir, chame por ajuda.##Construa uma boa nave e contrate um ótimo piloto.##Construções duram 1 minuto.";
if (Botao_rect(xx-w/2,yy,xx+w/2,DH-80,16,"",4210432,c_white,1)) {Now[1]=2; PlaySom(sound1,0,VSom,0)};
draw_sprite_ext(spr_cnstr_naves,0,xx,yy+h/2,s*.8,s*.8,0,-1,image_index/30);
draw_text_ext(xx,yy+h+10,t,13,w-32);
draw_set_valign(fa_middle);

if (Now[1] != 0) {
    image_speed = -1;
    image_index = min(15,image_index);
    if (image_index <= 0) {
        image_speed = 1;
        if (Now[1] == 1) {
            GUI = gui_construir_armas;
            Now[1]=-1; Now[2]="";
        } else if (Now[1] == 2) {
            GUI = gui_construir_naves;
            Now[1] = 0;
        }
    }
};

if (Botao_rect(DW/2-100,DH-64,DW/2+100,DH-16,16,"Voltar ao jogo",4210432,c_white,1)) {
    Now[0] = 0;
    DRA = scr_sydra;
    GUI = scr_sygui;
    PlaySom(sound2,0,VSom,0);
}
draw_set_alpha(1);
