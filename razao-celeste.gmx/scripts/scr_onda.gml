/*//scr_onda()
var t = "iniciar onda de ataques";
if (ONDA[2] > 0) {
    t = string(ceil((ONDA[2]-ONDA[1])/30))+"s";
    ONDA[1] = min(ONDA[1]+1,ONDA[2]);
    if (ONDA[1] == ONDA[2]) {
        if (instance_number(obj_asteroid) == 0 && instance_number(obj_nvinimigo) == 0) {
            script_execute(PLANETA.O);
            ONDA[0]++;
            ONDA[1]=0;
        }
    }
    draw_roundrect_colour_ext(round(DW/2)-100,8,round(DW/2)-100+200*(ONDA[1]/ONDA[2]),40,16,16,c_red,c_red,0);
}
draw_set_font(font_CooperBlack_12);
if (Botao_rect(round(DW/2)-100,8,round(DW/2)+100,40,16,t,-1,c_white,1) && PLANETA.O != -1 && ONDA[2] == 0) {
    addpopup_moedas(mouse_x,mouse_y,10);
    script_execute(PLANETA.O);
    ONDA[0]++;
    ONDA[1]=0;
}
draw_set_font(font_CourierNew);
