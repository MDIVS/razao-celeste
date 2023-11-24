///_cnstr_selectlaser( dba )
var dba = argument[0];
draw_line(DW*.25-16,DH/5,DW*.25-16,DH*.8,);
var s = (DW/4-128)/sprite_get_width(spr_laser);
var h = sprite_get_height(spr_laser)*s;
draw_sprite_ext(spr_laser,0,round(DW/8),round(DH/5+16+h/2),s,s,0,-1,image_index/30);
draw_text_ext(round(DW/8),round(DH/2+h/2-24),"LASER##Arma de disparo de fótons, dano baixo, atinge o alvo com precisão.",13,DW/4-64);
if (Botao_rect(32,DH*.8-64,DW*.25-32,DH*.8-16,16,"Vender por#100 moedas",c_red,c_white,1)) {addpopup_moedas(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),100); dba[@0]=-1};
