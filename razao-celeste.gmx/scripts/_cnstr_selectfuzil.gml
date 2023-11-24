///_cnstr_selectfuzil( dba )
var dba = argument[0];
draw_line(DW*.25-16,DH/5,DW*.25-16,DH*.8,);
var s = (DW/4-128)/sprite_get_width(spr_fuzil);
var h = sprite_get_height(spr_fuzil)*s;
draw_sprite_ext(spr_fuzil,0,round(DW/8),round(DH/5+16+h/2),s,s,0,-1,image_index/30);
draw_text_ext(round(DW/8),round(DH/2+h/2-24),"FUZIL##Arma de disparo de sólidos, dano médio, mirar manualmente almenta a frequência de disparos em 100%.",13,DW/4-64);
if (Botao_rect(32,DH*.8-64,DW*.25-32,DH*.8-16,16,"Vender por#75 moedas",c_red,c_white,1)) {addpopup_moedas(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),75); dba[@0]=-1};

var t = "Ative ou desative a mira manual, o uso do modo manual é recomendado apenas na Estação Espacial pois, apesar de dobrar a freqência, possui mira imprecisa.";
var h = string_height_ext(t,13,DW/4-64);
var th = h+128;

draw_roundrect_colour_ext(DW*.75+16,DH/2-h/2-80,DW-16,DH/2+h/2+80,16,16,c_white,c_white,1);
draw_text_ext(DW*.875,DH/2-64,t,13,DW/4-64);
if (Botao_rect(DW*.75+32,DH/2+h/2-48,DW-32,DH/2+h/2,16,"MANUAL",c_lime*(dba[0]==ascr_mousefuzil)+c_gray*(dba[0]==ascr_fuzil),c_white,1)) dba[@0] = ascr_mousefuzil;
if (Botao_rect(DW*.75+32,DH/2+h/2+16,DW-32,DH/2+h/2+64,16,"ALTOMÁTICO",c_gray*(dba[0]==ascr_mousefuzil)+c_lime*(dba[0]==ascr_fuzil),c_white,1)) dba[@0] = ascr_fuzil;
