///_cnstr_compralaser( dba )
var dba = argument[0];
draw_line(DW*.25-16,DH/5,DW*.25-16,DH*.8,);
var s = (DW/4-128)/sprite_get_width(spr_laser);
var h = sprite_get_height(spr_laser)*s;
draw_sprite_ext(spr_laser,0,round(DW/8),round(DH/5+16+h/2),s,s,0,-1,image_index/30);
draw_text_ext(round(DW/8),round(DH/2+h/2-24),"LASER##Arma de disparo de fótons, dano baixo, atinge o alvo com precisão.",13,DW/4-64);
if (Botao_rect(32,DH*.8-64,DW*.25-32,DH*.8-16,16,"Comprar por#200 moedas",-1,c_orange,1)) {
    if (MOEDAS >= 200) {
        PlaySom(sound4,0,sy.VSom,0);
        mod_weapon_scr(dba,ascr_laser);
        MOEDAS -= 200;
    } else popup_create("Você não possui moedas suficientes.");
};
