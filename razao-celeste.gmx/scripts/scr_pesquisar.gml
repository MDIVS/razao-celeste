///scr_pesquisar()
if (Title != "") exit;
if (sy.GUI != scr_pesquisar) {
    var xx = sy.DW/2+24;
    var yy = sy.DH-32;
    
    if (scr_buttonspr(xx,yy,spr_flask_blue,0,c_white,c_gray,1)) {
        DRA = -1;
        GUI = scr_pesquisar;
        PlaySom(sound1,0,VSom,0);
    }
    
    exit;
};

draw_background_tiled(bg_pesq,0,0);
draw_set_valign(fa_top);
var xx=round(DW*.3), w=round(DW*.25);
var s = min(w/sprite_get_width(spr_planrotacao),w/sprite_get_height(spr_planrotacao));
var yy=round(DH*.2), h=round(sprite_get_height(spr_planrotacao)*s);
var t = "ÓRBITA##Esta pesquisa te fará conhecer a trajetória traçada por esse planeta ao redor de sua estrela.##A pesquisa de órbita dura 15 segundos.";

if (Botao_rect(xx-w/2,yy,xx+w/2,DH-80,16,"",4210432,c_white,1)) {
    GUI = gui_pesq_orbita;
    Now[0]=0; Now[1]=instance_create(0,0,object0); Now[2]=_ini_path_orbital(0);
    with(Now[1]) path_start(sy.Now[2],5,1,1);
    PlaySom(sound1,0,VSom,0);
};

draw_sprite_ext(spr_planrotacao,0,xx,yy+h/2,s*.8,s*.8,0,-1,1);
draw_text_ext(xx,yy+h+10,t,13,w-32);

xx=round(DW*.7);
s = min(w/sprite_get_width(spr_plansatelite),w/sprite_get_height(spr_plansatelite));
yy=round(DH*.2);
t = "SATÉLITES##Revela os principais satélites desse planeta, alguns planetas não possuem satélites enquanto outros são bastante privilegiados.##A pesquisa de satélites leva 15 segundos para ser concluída.";

if (Botao_rect(xx-w/2,yy,xx+w/2,DH-80,16,"",4210432,c_white,1)) {
    GUI = gui_pesq_satelites;
    Now[0]=0; Now[1]=instance_create(0,0,object0); Now[2]=instance_create(0,0,object0);
    Now[1].Path = _ini_path_orbital(0);
    Now[2].Path = _ini_path_orbital(0,-64);
    with(Now[1]) path_start(Path,5,1,1);
    with(Now[2]) path_start(Path,5,1,1);
    PlaySom(sound1,0,VSom,0);
};

draw_sprite_ext(spr_plansatelite,0,xx,yy+h/2,s*.8,s*.8,0,-1,1);
draw_text_ext(xx,yy+h+10,t,13,w-32);
draw_set_valign(fa_middle);

if (Botao_rect(DW/2-100,DH-48,DW/2+100,DH-16,32,"Voltar ao jogo",0,c_fuchsia,1)) {
    DRA = scr_sydra;
    GUI = scr_sygui;
    PlaySom(sound2,0,VSom,0);
}
