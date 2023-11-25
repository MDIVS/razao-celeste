///puzzle_andromeda()
draw_clear(0);
draw_set_alpha(Now[0]/30);
draw_background(bg_And,0,0);
draw_set_font(algerian16);
draw_text_colour(DW-128,20,"RAZÃO CELESTE",c_red,c_red,c_red,c_red,Now[0]/30);
draw_text_colour(DW-128,40,"ANDRÔMEDA",c_.pink,c_.pink,c_.pink,c_.pink,Now[0]/30);
draw_set_font(arialbold12);

if (Botao_rect(DW/2-64,DH/4*3,DW/2+64,DH/4*3+40,40,"Retornar",c_dkgray,c_silver,1) && Now[1]>0) {
    Now[1] = -1;
    Now[2] = scr_menu_constelacoes;
    PlaySom(sound2,0,VSom,0);
}

Now[0]=min(30,Now[0]+Now[1]);
if (Now[0] < 0) {
    GUI = Now[2];
    Now[0]=0; Now[1]=1; Now[2]=0;
}
