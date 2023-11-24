///_cnstr_comprafuzil( dba )
var dba = argument[0];
draw_line(DW*.25-16,DH/5,DW*.25-16,DH*.8,);
var s = (DW/4-128)/sprite_get_width(spr_fuzil);
var h = sprite_get_height(spr_fuzil)*s;
draw_sprite_ext(spr_fuzil,0,round(DW/8),round(DH/5+16+h/2),s,s,0,-1,image_index/30);
draw_text_ext(round(DW/8),round(DH/2+h/2-24),"FUZIL##Arma de disparo de sólidos, dano médio, mirar manualmente almenta a frequência de disparos em 100%.",13,DW/4-64);
if (Botao_rect(32,DH*.8-64,DW*.25-32,DH*.8-16,16,"Comprar por#100 moedas",-1,c_orange,1)) {
    if (MOEDAS >= 100) {
        PlaySom(sound4,0,sy.VSom,0);
        mod_weapon_scr(dba,ascr_fuzil);
        MOEDAS -= 100;
    } else popup_create("Você não possui moedas suficientes.");
};
