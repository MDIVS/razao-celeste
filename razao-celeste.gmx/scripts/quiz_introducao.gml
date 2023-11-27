#define quiz_introducao
var i=instance_create(0,0,io_syquiz);
with(i) {
    DDW[0] = DW/2-64;
    DDW[1] = DH/2;
    DDW[2] = 0;
    
    DDC[0] = DW/2+64;
    DDC[1] = DH/2;
    DDC[2] = 0;
    
    Drag = 0;
    Drop = -1;

    var dir = random(360);
    B[0,0] = 0;
    B[0,1] = dir;
    B[0,2] = "A Astronomia é#a mais recente#das ciências";
    B[0,3] = -1;
    B[0,4] = 0;
    
    dir += 72;
    B[1,0] = 0;
    B[1,1] = dir;
    B[1,2] = "Os Chineses já#desenvolviam a Astronomia#nos tempos antes#de Cristo";
    B[1,3] = -1;
    B[1,4] = 1;
    
    dir += 72;
    B[2,0] = 0;
    B[2,1] = dir;
    B[2,2] = "Plantio e colheita#nunca dependeram das#observações dos astros";
    B[2,3] = -1;
    B[2,4] = 0;
    
    dir += 72;
    B[3,0] = 0;
    B[3,1] = dir;
    B[3,2] = "Calendários já vinham#sido feitos nos tempos#antes de Cristo";
    B[3,3] = -1;
    B[3,4] = 1;
    
    dir += 72;
    B[4,0] = 0;
    B[4,1] = dir;
    B[4,2] = "A astrologia#desenvolveu-se junto#à Astronomia";
    B[4,3] = -1;
    B[4,4] = 1;
    
    STP[0] = -1;
    DRA[0] = -1;
    GUI[0] = quiz_introducao1;
    
    STP[1] = quiz_introducao2;
    DRA[1] = -1;
    GUI[1] = quiz_introducao3;
    
    STP[2] = -1;
    DRA[2] = -1;
    GUI[2] = quiz_introducao4;
    
    SCS = 3;
}

#define quiz_introducao1
draw_rectangle_colour(0,0,DW,DH,0,0,0,0,0);
var t1="A Astronomia é a mais antiga das ciências.

Descobertas arqueológicas têm fornecido evidências de observações astronômicas entre os povos pré-históricos. Desde a antiguidade, o céu vem sendo usado como mapa, calendário e relógio. Os registros astronômicos mais antigos datam de aproximadamente 3.000 a.C. e se devem aos chineses, babilônios, assírios e egípcios.

Naquela época, os astros eram estudados com objetivos práticos, como medir a passagem do tempo (calendários), para prever a melhor época para o plantio e a colheita, ou com objetivos mais relacionados à astrologia, como fazer previsões do futuro, já que acreditavam que os deuses do céu tinham o poder da colheita, da chuva e da vida."
var t2="MENDONCA, F. L. F. História da Astronomia, 2004. Disponível em http://www.if.ufrgs.br/tex/fis01043/20042/felipe/historia.html. Acesso em 12/12/2018.";

var w = DW*.66;
var hh = (string_height_ext(t1,24,w)+string_height_ext(t2,24,w)+24)/2;

draw_set_colour(16743936);
draw_set_valign(fa_top);
draw_text_ext(DW/2,DH/2-hh,t1,24,w);
draw_set_colour(16256);
draw_set_valign(fa_bottom);
draw_text_ext(DW/2,DH/2+hh,t2,24,w);
draw_set_valign(fa_middle);
draw_set_colour(c_white);

if Bspr(MA,bcontinuar,0,DW/2,DH-80) {background_colour=c_black;PlaySom(sound1,0,VSom,0);To=1};

#define quiz_introducao2
//step
Drop = -1;
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var mj = device_mouse_check_button_pressed(0,mb_left);
var mk = device_mouse_check_button(0,mb_left);
var xx, yy, i;
for (i=0; i<5; i++) {
    if B[i,3]==-1||B[i,3]==B[i,4] B[i,0]=256*(1-sqr(1-image_alpha)) else B[i,0]=256;
    B[i,1] += 360/30/60;
    if Drag {
        xx = DW/2+lengthdir_x(B[i,0],B[i,1]);
        yy = DH/2+lengthdir_y(B[i,0],B[i,1]);
        if point_in_circle(mx,my,xx,yy,96) Drop = i;
    }
    if Drop==i&&!mk B[i,3]=DDC[2];
}

Drag = DDW[2]||DDC[2];
if Drag {if !mk {DDW[2]=0; DDC[2]=0; Drag=0}};

if mj {
    if point_in_circle(mx,my,DDW[0],DDW[1],40) DDW[2] = 1;
    if point_in_circle(mx,my,DDC[0],DDC[1],40) DDC[2] = 1;
}

#define quiz_introducao3
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

draw_set_font(calibri11);
draw_text(DW/2,80,"Arraste os itens X (errado) e V (certo)#para as respectivas alternativas:");

var xx, yy, cc, aa, i;
for (i=0; i<5; i++) {
    xx = DW/2+lengthdir_x(B[i,0],B[i,1]);
    yy = DH/2+lengthdir_y(B[i,0],B[i,1]);
    aa = image_alpha+(B[i,3]!=-1&&B[i,3]!=B[i,4]);
    if Drop==i cc=32511*DDW[2]+16743936*DDC[2] else cc=c_dkgray*(B[i,3]==-1)+32511*(B[i,3]==0)+16743936*(B[i,3]==1);
    DrawCircle(xx,yy,96,cc,cc,aa,aa,24,96);
    draw_set_alpha(aa);
    draw_text(xx,yy,B[i,2]);
}

draw_set_alpha(1);

if DDW[2] draw_sprite(bddw,0,mx,my) else draw_sprite(bddw,0,DDW[0],DDW[1]);
if DDC[2] draw_sprite(bddc,0,mx,my) else draw_sprite(bddc,0,DDC[0],DDC[1]);

draw_set_font(arialbold12);

if Bspr(MA,bcontinuar,0,DW/2,DH-80)&&!To {
    PlaySom(sound1,0,VSom,0);
    var i, pass=1; for (i=0; i<5; i++) {if B[i,3]==-1 pass=0};
    if pass {To=1;
        for (i=0; i<5; i++) {if B[i,3]==B[i,4] instance_create(DW/2+lengthdir_x(B[i,0],B[i,1]),DH/2+lengthdir_y(B[i,0],B[i,1]),ttd_astrocoin)};
    } else popup_create("Marcar todas as opções em cinza");
};

#define quiz_introducao4
draw_rectangle_colour(0,0,DW,DH,0,0,0,0,0);

if Bspr(MA,bcontinuar,0,DW/2,DH-80) {background_colour=make_colour_rgb(0,16,32);PlaySom(sound1,0,VSom,0);To=1};