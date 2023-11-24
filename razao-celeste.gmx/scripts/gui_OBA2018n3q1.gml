///gui_OBA2018n3q1()
var q = Now[3];
draw_background_tiled(bg_pesq,0,0);
draw_set_alpha(image_index/30);

var x1 = round(DW*.17), x2 = round(DW*.83);
var c = 4210432*(q[0]==0)+128*(q[0]==1)+32768*(q[0]==2);
if (Now[1]!=0 && point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),x1,round(DH/2)-96-24,x2,round(DH/2)-96+24)) {
    c = 4210432*(Now[1]==0)+192*(Now[1]==1)+49152*(Now[1]==2);
    if (!device_mouse_check_button(0,mb_left)) q[@ 0] = Now[1];
}
draw_roundrect_colour_ext(x1,round(DH/2)-96-24,x2,round(DH/2)-96+24,16,16,c,c,0);

c = 4210432*(q[1]==0)+128*(q[1]==1)+32768*(q[1]==2);
if (Now[1]!=0 && point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),x1,round(DH/2)-32-24,x2,round(DH/2)-32+24)) {
    c = 4210432*(Now[1]==0)+192*(Now[1]==1)+49152*(Now[1]==2);
    if (!device_mouse_check_button(0,mb_left)) q[@ 1] = Now[1];
}
draw_roundrect_colour_ext(x1,round(DH/2)-32-24,x2,round(DH/2)-32+24,16,16,c,c,0);

c = 4210432*(q[2]==0)+128*(q[2]==1)+32768*(q[2]==2);
if (Now[1]!=0 && point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),x1,round(DH/2)+32-24,x2,round(DH/2)+32+24)) {
    c = 4210432*(Now[1]==0)+192*(Now[1]==1)+49152*(Now[1]==2);
    if (!device_mouse_check_button(0,mb_left)) q[@ 2] = Now[1];
}
draw_roundrect_colour_ext(x1,round(DH/2)+32-24,x2,round(DH/2)+32+24,16,16,c,c,0);
c = 4210432*(q[3]==0)+128*(q[3]==1)+32768*(q[3]==2);
if (Now[1]!=0 && point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),x1,round(DH/2)+96-24,x2,round(DH/2)+96+24)) {
    c = 4210432*(Now[1]==0)+192*(Now[1]==1)+49152*(Now[1]==2);
    if (!device_mouse_check_button(0,mb_left)) q[@ 3] = Now[1];
}
draw_roundrect_colour_ext(x1,round(DH/2)+96-24,x2,round(DH/2)+96+24,16,16,c,c,0);

draw_roundrect_ext(x1,round(DH/2)-96-24,x2,round(DH/2)-96+24,16,16,1);
draw_roundrect_ext(x1,round(DH/2)-32-24,x2,round(DH/2)-32+24,16,16,1);
draw_roundrect_ext(x1,round(DH/2)+32-24,x2,round(DH/2)+32+24,16,16,1);
draw_roundrect_ext(x1,round(DH/2)+96-24,x2,round(DH/2)+96+24,16,16,1);

draw_text(round(DW/2),round(DH/2)-96,"Os planetas descrevem uma órbita elíptica ao redor do Sol.");
draw_text(round(DW/2),round(DH/2)-32,"Os planetas giram ao redor do seu eixo num movimento chamado de rotação.");
draw_text(round(DW/2),round(DH/2)+32,"Os planetas giram ao redor do Sol num movimento chamado de translação.");
draw_text(round(DW/2),round(DH/2)+96,"Os planetas giram ao redor do Sol em 365 dias.");

if (Now[2] == 0) {
    draw_set_font(font_CooperBlack);
    draw_text(round(DW/2),round(DH*.15),"Arraste um item C (certo) ou E (errado)#e solte em cada afirmação:");
    var xx = DW*.33, yy = DH*.825;
    if (Now[1] == 0 && device_mouse_check_button_pressed(0,mb_left) && point_in_circle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),xx,yy,32)) Now[1] = 1;
    if (Now[1] == 1) {
        xx = device_mouse_x_to_gui(0); yy = device_mouse_y_to_gui(0);
        if (!device_mouse_check_button(0,mb_left)) Now[1] = 0;
    };
    DrawCircle(xx,yy,32,4210432,4210432,image_index/30,image_index/30,16,32);
    DrawCircle(xx,yy,32,c_red,c_red,image_index/30,image_index/30,16,6);
    draw_text_colour(xx+48,yy,"E",c_red,c_red,c_red,c_red,image_index/30);
    
    xx = DW*.66; yy = DH*.875;
    if (Now[1] == 0 && device_mouse_check_button_pressed(0,mb_left) && point_in_circle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),xx,yy,32)) Now[1] = 2;
    if (Now[1] == 2) {
        xx = device_mouse_x_to_gui(0); yy = device_mouse_y_to_gui(0);
        if (!device_mouse_check_button(0,mb_left)) Now[1] = 0;
    };
    DrawCircle(xx,yy,32,4210432,4210432,image_index/30,image_index/30,16,32);
    DrawCircle(xx,yy,32,c_lime,c_lime,image_index/30,image_index/30,16,6);
    draw_text_colour(xx+48,yy,"C",c_lime,c_lime,c_lime,c_lime,image_index/30);
    
    var pass = 1;
    for (var i=0; i<4; i++) {if (q[i]==0) pass = 0};
    if (pass) Now[2] = 1;
    draw_set_font(font_CourierNew);
}

if (Now[2] == 1) {
    draw_set_font(font_CooperBlack);
    draw_text(round(DW/2),round(DH*.15),"Confirmar escolhas?");
    draw_set_font(font_CourierNew);
    if (Botao_rect(DW*.45-256,DH*.85-18,DW*.45,DH*.85+18,16,"Editar resposta",0,c_fuchsia,1)) {q[@0]=0; q[@1]=0; q[@2]=0; q[@3]=0; Now[2]=0};
    if (Botao_rect(DW*.55,DH*.85-18,DW*.55+256,DH*.85+18,16,"Confirmar",0,c_fuchsia,1)) {
        var correct = 0;
        if (q[0]==2 && q[1]==2 && q[2]==2 && q[3]==1) {
            Now[2]=2;
            addpopup_moedas(DW*.55+128,DH*.85,100);
        } else Now[2]=3;
    };
};

if (Now[2] == 2) {
    draw_set_font(font_CooperBlack);
    draw_text_colour(round(DW/2),round(DH*.15),"CORRETO!",c_lime,c_lime,c_lime,c_lime,image_index/30);
    draw_set_font(font_CourierNew);
    draw_text(round(DW/2),round(DH*.85),'A tripulação reconhece a sua genialidade:#"Estas 100 moedas representa a nossa confiança no Sr"##Toque na tela para continuar');
    if (device_mouse_check_button_pressed(0,mb_left)) {
        DRA=scr_sydra;GUI=scr_sygui;
        q=0;Now[0]=0;Now[1]=0;Now[2]=0;Now[3]=0;
    }
}

if (Now[2] == 3) {
    draw_set_font(font_CooperBlack);
    draw_text_colour(round(DW/2),round(DH*.15),"Ops!",c_red,c_red,c_red,c_red,image_index/30);
    draw_set_font(font_CourierNew);
    draw_text(round(DW/2),round(DH*.85),'A tripulação demonstra a sua insatisfação:#"Com um comandante tão esperto, torna-se certo: iremos à ruina"##Toque na tela para continuar');
    if (device_mouse_check_button_pressed(0,mb_left)) {
        DRA=scr_sydra;GUI=scr_sygui;
        q=0;Now[0]=0;Now[1]=0;Now[2]=0;Now[3]=0;
    }
}

draw_text(DW-140,DH-29,"(OBA, 2018, nv3: questão 1)");
draw_text_colour(DW-88,DH-10,"www.oba.org.br",c_orange,c_orange,c_orange,c_orange,image_index/30);
draw_text(DW-200,DH-10,"Disponível em ");
draw_set_alpha(1);
