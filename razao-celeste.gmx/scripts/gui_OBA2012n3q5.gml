///gui_OBA2012n3q5()
draw_background_tiled(bg_pesq,0,0);
draw_set_alpha(image_index/30);

if (Now[1] == 0) {
    draw_set_halign(fa_left);
    draw_text_ext(round(DW*.1),64,"Você sabe que a Terra gira ao redor do Sol numa órbita elíptica. Chamamos esse movimento de translação. Para dar uma volta completa ao redor do Sol, a Terra gasta, aproximadamente, 365,26 dias. Este tempo chamamos de Ano Sideral. Ele é medido em relação às estrelas fixas e é maior do que o ano Trópico.",14,DW*.8);
    draw_text_ext(round(DW*.2),128,'Toque na figura abaixo que melhor representa a órbita da Terra ao redor do Sol. Não há efeito de perspectiva, isto é, você está olhando tudo de "cima".',14,DW*.6);
    draw_set_halign(fa_center);
    
    if (Botao_ellipse(DW*.2-48,DH*.5-48,DW*.2+48,DH*.5+48,"",-1,c_white,32,3,1)) {Now[1] = 1};
    if (Botao_ellipse(DW*.4-48,DH*.5-40,DW*.4+48,DH*.5+40,"",-1,c_white,32,3,1)) {Now[1] = 2};
    if (Botao_ellipse(DW*.6-48,DH*.5-32,DW*.6+48,DH*.5+32,"",-1,c_white,32,3,1)) {Now[1] = 3};
    if (Botao_ellipse(DW*.8-48,DH*.5-24,DW*.8+48,DH*.5+24,"",-1,c_white,32,3,1)) {Now[1] = 4};
}

if (Now[1] == 1) {
    draw_set_font(font_CooperBlack);
    draw_text_colour(round(DW/2),round(DH*.15),"CORRETO!",c_lime,c_lime,c_lime,c_lime,image_index/30);
    draw_set_font(font_CourierNew);
    draw_text(round(DW/2),round(DH*.85),'A tripulação reconhece a sua genialidade:#"Estas 100 moedas representa a nossa confiança no Sr"##Toque na tela para continuar');
    if (device_mouse_check_button_pressed(0,mb_left)) {
        addpopup_moedas(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),200);
        DRA=scr_sydra;GUI=scr_sygui;
        q=0;Now[0]=0;Now[1]=0;Now[2]=0;Now[3]=0;
    }
}

if (Now[1] > 1) {
    draw_set_font(font_CooperBlack);
    draw_text_colour(round(DW/2),round(DH*.15),"Ops!",c_red,c_red,c_red,c_red,image_index/30);
    draw_set_font(font_CourierNew);
    draw_text(round(DW/2),round(DH*.85),'A tripulação demonstra a sua insatisfação:#"Com um comandante tão esperto, torna-se certo: iremos à ruina"##Toque na tela para continuar');
    if (device_mouse_check_button_pressed(0,mb_left)) {
        DRA=scr_sydra;GUI=scr_sygui;
        q=0;Now[0]=0;Now[1]=0;Now[2]=0;Now[3]=0;
    }
    if (Botao_ellipse(DW*.2-48,DH*.5-48,DW*.2+48,DH*.5+48,"",-1,c_lime,32,3,1)) {};
    if (Botao_ellipse(DW*.4-48,DH*.5-40,DW*.4+48,DH*.5+40,"",-1,c_white*(Now[1]=!2)+c_red*(Now[1]==2),32,3,1)) {};
    if (Botao_ellipse(DW*.6-48,DH*.5-32,DW*.6+48,DH*.5+32,"",-1,c_white*(Now[1]=!3)+c_red*(Now[1]==3),32,3,1)) {};
    if (Botao_ellipse(DW*.8-48,DH*.5-24,DW*.8+48,DH*.5+24,"",-1,c_white*(Now[1]=!4)+c_red*(Now[1]==4),32,3,1)) {};
}

draw_text(DW-140,DH-29,"(OBA, 2012, nv3: questão 5)");
draw_text_colour(DW-88,DH-10,"www.oba.org.br",c_orange,c_orange,c_orange,c_orange,image_index/30);
draw_text(DW-200,DH-10,"Disponível em ");
draw_set_alpha(1);
