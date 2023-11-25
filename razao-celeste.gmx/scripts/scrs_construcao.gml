#define scrs_construcao


#define scr_construcao
if sy.GUI!=scr_construcao{if VIEW_OBJECT!=-1&&Bspr(MA,spr_cnstr,VIEW_OBJECT.Construivel,DW/2,DH-40){if VIEW_OBJECT.Construivel{Now[1]=-3;Now[2]=scr_construcao;Now[3]=-1;PlaySom(sound1,0,VSom,0)}else popup_create("Objeto não construível")}exit};
ini_open("Salvo.ini");
draw_set_alpha(Now[0]/30);
BAstrocoin(DW/2,32,ini_read_real("OBA","Astrocoins",0));

var ws = VIEW_OBJECT.Weap;
_cntr_drawweaponsbuttons(ws);
if Now[3]!=-1var dba=ws[Now[3]];
if Now[3]==-1{
    draw_text(DW/2,64,VIEW_OBJECT.Nome);
    draw_set_font(arial8);
    draw_text_ext(DW/2,88,"Toque em um slot para construir, vender ou modificar uma arma#Qualquer modificação é permanente, mesmo quando completar a fase ou sair do jogo",12,DW*.8);
    draw_set_font(arialbold12);
} else {
    if dba[0]==ascr_fuzil||dba[0]==ascr_mousefuzil _cnstr_selectfuzil(dba);
    if dba[0]==ascr_laser _cnstr_selectlaser(dba);
    if (dba[0] == -1) {
        draw_roundrect_colour_ext(DW*.875-50,DH/2-136,DW*.875+50,DH/2+136,16,16,16743936,16743936,1);
        
        if Bspr(MA,spr_fuzil,0,DW*.875,DH/2-96){if Now[2]!="Fuzil"Now[2]="Fuzil"else Now[2]=""};
        if Bspr(MA,spr_laser,0,DW*.875,DH/2-32){if Now[2]!="Laser"Now[2]="Laser"else Now[2]=""};
        
        if (Now[2] == "Fuzil") _cnstr_comprafuzil(dba);
        if (Now[2] == "Laser") _cnstr_compralaser(dba);
    }
}

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{DRA=scr_sydra;GUI=scr_sygui;Now[0]=0;Now[1]=3;Now[2]=0;Now[3]=0}
ini_close();

#define _cntr_drawweaponsbuttons
var ws = argument0;
var w = DW*.5;
var h = DH-160;
var s = min(w/sprite_get_width(VIEW_OBJECT.sprite_index),h/sprite_get_height(VIEW_OBJECT.sprite_index));

draw_sprite_ext(VIEW_OBJECT.sprite_index,0,DW/2,DH/2,s,s,0,c_gray,min(image_index/30,.5));
var spr, xx, yy;
for (var i=0; i<array_length_1d(ws); i++) {
    var dba=ws[i], dis=dba[1]/VIEW_OBJECT.image_xscale*s, dir=dba[2];
    spr=weapon_get_sprite(dba[0]); xx=DW/2+lengthdir_x(dis,dir); yy=DH/2+lengthdir_y(dis,dir);
    
    if device_mouse_check_button_pressed(0,mb_left)&&point_in_circle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),xx,yy,20){if Now[3]==i Now[3]=-1else Now[3]=i;PlaySom(sound1,0,VSom,0)};
    draw_sprite_ext(spr,0,xx,yy,1,1,dba[3],-1,min(.33+.67*(Now[3]==-1||Now[3]==i),Now[0]/30));
}

#define _cnstr_comprafuzil
///_cnstr_comprafuzil( dba )
var dba = argument0;
draw_line(DW*.25-16,DH/5,DW*.25-16,DH*.8);
var h = sprite_get_height(spr_fuzil);
draw_sprite(spr_fuzil,0,round(DW/8),round(DH/5+h/2));
draw_set_valign(fa_top);
draw_text(round(DW/8),round(DH/5+h+8),"FUZIL");
draw_set_font(arial8);
draw_text_ext(round(DW/8),round(DH/5+h+24),"Arma de disparo de sólidos, dano médio, mirar manualmente almenta a frequência de disparos em 100%",12,DW/4-64);
draw_set_font(arialbold12);
draw_set_valign(fa_middle);

if B5(MA,32,DH*.8-48,DW*.25-32,DH*.8,"Comprar#(-5 Astrocoins)",16,c_orange){
    if ini_read_real("OBA","Astrocoins",0)>4{
        PlaySom(sound4,0,VSom,0);mod_weapon_scr(dba,ascr_fuzil);
        ini_write_real("OBA","Astrocoins",ini_read_real("OBA","Astrocoins",0)-5);
        ini_write_real(VIEW_OBJECT.Nome,"Weap"+string(Now[3]),ascr_fuzil);
    } else popup_create("Você não possui Astrocoins suficientes");
};

#define _cnstr_compralaser
///_cnstr_compralaser( dba )
var dba = argument0;
draw_line(DW*.25-16,DH/5,DW*.25-16,DH*.8);
var h = sprite_get_height(spr_laser);
draw_sprite(spr_laser,0,round(DW/8),round(DH/5+h/2));
draw_set_valign(fa_top);
draw_text(round(DW/8),round(DH/5+h+8),"LASER");
draw_set_font(arial8);
draw_text_ext(round(DW/8),round(DH/5+h+24),"Arma de disparo de fótons, dano baixo, atinge o alvo com precisão",12,DW/4-64);
draw_set_font(arialbold12);
draw_set_valign(fa_middle);

if B5(MA,32,DH*.8-48,DW*.25-32,DH*.8,"Comprar#(-10 Astrocoins)",16,c_orange){
    if ini_read_real("OBA","Astrocoins",0)>9{
        PlaySom(sound4,0,VSom,0);mod_weapon_scr(dba,ascr_laser);
        ini_write_real("OBA","Astrocoins",ini_read_real("OBA","Astrocoins",0)-10);
        ini_write_real(VIEW_OBJECT.Nome,"Weap"+string(Now[3]),ascr_laser);
    } else popup_create("Você não possui Astrocoins suficientes");
};

#define _cnstr_selectfuzil
///_cnstr_selectfuzil( dba )
var dba=argument0;
draw_line(DW*.25-16,DH/5,DW*.25-16,DH*.8);
draw_line(DW*.75+16,DH/5,DW*.75+16,DH*.8);
var h = sprite_get_height(spr_fuzil);
draw_sprite(spr_fuzil,0,round(DW/8),round(DH/5+h/2));
draw_set_valign(fa_top);
draw_text(round(DW/8),round(DH/5+h+8),"FUZIL");
draw_text(round(DW*.875),round(DH/5),"Comportamento");
draw_set_font(arial8);
draw_text_ext(round(DW/8),round(DH/5+h+24),"Arma de disparo de sólidos, dano médio, mirar manualmente almenta a frequência de disparos em 100%",12,DW/4-64);
draw_text_ext(round(DW*.875),round(DH/5+20),"Alterne entre a mira manual e uma miragem automática:##*O modo manual duplica a frequência de tiros do Fuzil.##*O uso do modo manual é recomendado apenas na Estação Espacial pois, apesar de dobrar a freqência, possui mira imprecisa",12,DW/4-64);
draw_set_font(arialbold12);
draw_set_valign(fa_middle);

if B5(MA,32,DH*.8-48,DW*.25-32,DH*.8,"Destruir#(-2 Astrocoins)",16,c_orange,){
    if ini_read_real("OBA","Astrocoins",0)>1{
        PlaySom(sound4,0,VSom,0);mod_weapon_scr(dba,-1);
        ini_write_real("OBA","Astrocoins",ini_read_real("OBA","Astrocoins",0)-2);
        ini_write_real(VIEW_OBJECT.Nome,"Weap"+string(Now[3]),-1);
    } else popup_create("Você não possui Astrocoins suficientes");
};

if B5(MA,DW*.75+32,DH*.8-70,DW-32,DH*.8-40,"MANUAL",10,c_lime*(dba[0]==ascr_mousefuzil)+c_gray*(dba[0]==ascr_fuzil)){
    popup_create("Sorry, em desenvolvimento");
//    PlaySom(sound1,0,VSom,0);mod_weapon_scr(dba,ascr_mousefuzil)
};
if B5(MA,DW*.75+32,DH*.8-30,DW-32,DH*.8,"AUTOMÁTICO",10,c_gray*(dba[0]==ascr_mousefuzil)+c_lime*(dba[0]==ascr_fuzil)){PlaySom(sound1,0,VSom,0);mod_weapon_scr(dba,ascr_fuzil)};

#define _cnstr_selectlaser
///_cnstr_selectlaser( dba )
var dba=argument0;
draw_line(DW*.25-16,DH/5,DW*.25-16,DH*.8);
var h = sprite_get_height(spr_laser);
draw_sprite(spr_laser,0,round(DW/8),round(DH/5+h/2));
draw_set_valign(fa_top);
draw_text(round(DW/8),round(DH/5+h+8),"LASER");
draw_set_font(arial8);
draw_text_ext(round(DW/8),round(DH/5+h+24),"Arma de disparo de fótons, dano baixo, atinge o alvo com precisão.",13,DW/4-64);
draw_set_font(arialbold12);
draw_set_valign(fa_middle);

if B5(MA,32,DH*.8-48,DW*.25-32,DH*.8,"Destruir#(-5 Astrocoins)",16,c_orange,){
    if ini_read_real("OBA","Astrocoins",0)>4{
        PlaySom(sound4,0,VSom,0);mod_weapon_scr(dba,-1);
        ini_write_real("OBA","Astrocoins",ini_read_real("OBA","Astrocoins",0)-5);
        ini_write_real(VIEW_OBJECT.Nome,"Weap"+string(Now[3]),-1);
    } else popup_create("Você não possui Astrocoins suficientes");
};