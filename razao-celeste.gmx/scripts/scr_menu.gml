///scr_menu()
//draw_background_tiled_ext(tx_null,0,0,1,1,make_colour_rgb(0,64,0),1);
draw_background_tiled(bg_pesq,0,0);
if (Botao_rect(round(DW/3)-96,64,round(DW/3)+96,round(DH/2)-16,32,"PLANETAS TELÚRICOS#DO SISTEMA SOLAR#* * *##Defenda o planeta#Mercúrio, Vênus,#Terra ou Marte!",c_olive,c_white,1)) {
    GUI = menu_teluricos;
    PLANETA = instance_create(0,0,obj_Mercurio);
}

if (Botao_rect(round(DW/3*2)-96,64,round(DW/3*2)+96,round(DH/2)-16,32,"PLANETAS GASOSOS#DO SISTEMA SOLAR#* * * * *##Defenda o planeta#Júpiter, Saturno,#Urano ou Netuno!",c_olive,c_white,1)) {
    GUI = menu_gasosos;
    PLANETA = instance_create(0,0,obj_Jupiter);
}

if (Botao_rect(round(DW/3*2)-96,round(DH/2)+16,round(DW/3*2)+96,round(DH/2)+48,16,"ENTENDA O GAME",0,c_white,1)) {
    GUI = menu_entenda;
    PlaySom(sound1,0,VSom,0);
}

if (Botao_rect(round(DW/3*2)-64,round(DH/2)+56,round(DW/3*2)+64,round(DH/2)+88,16,"CRÉDITOS",0,c_white,1)) {
    GUI = menu_creditos;
    PlaySom(sound1,0,VSom,0);
}
