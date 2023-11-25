///scr_menu_constelacoes()
draw_clear(0);
draw_set_alpha(Now[0]/30);

if (Botao_circle(DW/3,DH/3,80,"O que é#Constelação?",c_.dkdkgray,32511,24,10,1) && Now[1] > 0) {
    Now[1] = -1;
    Now[2] = scr_menu_constelacoes;
    PlaySom(sound1,0,VSom,0);
}

if (Botao_circle(DW/3*2,DH/3,70,"Constelações#Puzze",c_.dkdkgray,16743936,24,8,1) && Now[1] > 0) {
    Now[1] = -1;
    Now[2] = scr_menu_constelacoes_puzzle;
    PlaySom(sound1,0,VSom,0);
}

if (Botao_rect(DW/2-32-128,DH/4*3,DW/2-32,DH/4*3+40,40,"Retornar",c_dkgray,c_silver,1) && Now[1]>0) {
    Now[1] = -1;
    Now[2] = scr_menu;
    PlaySom(sound2,0,VSom,0);
}

Now[0]=min(30,Now[0]+Now[1]);
if (Now[0] < 0) {
    GUI = Now[2];
    Now[0]=0; Now[1]=1; Now[2]=0;
}
