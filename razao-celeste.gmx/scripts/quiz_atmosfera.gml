#define quiz_atmosfera
var i=instance_create(0,0,io_syquiz);
with(i) {
    A_INDEX = 0;
    A_Terra = instance_create(DW,DH/2,object0);
    A_Terra.SRaio = 0;
    A_Terra.ARaio = 0;
    A_Terra.Drag = 0;
    
    Q[0] = instance_create(DW/3,DH*.25,object0);
    Q[1] = instance_create(DW/3,DH*.50,object0);
    Q[2] = instance_create(DW/3,DH*.75,object0);
    
    Q[0].Raio = 0;
    Q[1].Raio = 0;
    Q[2].Raio = 0;
    
    Q[0].Cor = c_white;
    Q[1].Cor = c_white;
    Q[2].Cor = c_white;
    
    Q[0].Txt = "A atmosfera terrestre possui 270km de espessura";
    Q[1].Txt = "A atmosfera terrestre possui 250km de espessura";
    Q[2].Txt = "A atmosfera terrestre possui 480km de espessura";
    
    Q[0].R = 0;
    Q[1].R = 0;
    Q[2].R = 1;
    
    BC[0] = 0;
    BC[1] = DW/2;
    BC[2] = DH;
    BC[3] = 0;
    
    STP[0] = -1;
    DRA[0] = -1;
    GUI[0] = quiz_atmosfera1;
    
    STP[1] = -1;
    DRA[1] = -1;
    GUI[1] = quiz_atmosfera2;
    
    STP[2] = -1;
    DRA[2] = -1;
    GUI[2] = quiz_atmosfera3;
    
    STP[3] = -1;
    DRA[3] = -1;
    GUI[3] = quiz_atmosfera4;
    
    STP[4] = -1;
    DRA[4] = -1;
    GUI[4] = quiz_atmosfera5;
    
    SCS = 5;
}

#define quiz_atmosfera1
draw_rectangle_colour(0,0,DW,DH,0,0,0,0,0);
var t1='Damos o nome de "atmosfera" da Terra à fina camada de gases que circunda o nosso planeta.'
var t2="Retirado da revista Atmosfera (ON)#Toque para acessar o pdf";

var w = DW*.66;
var bh = string_height_ext(t2,24,w)+16;
var hh = (string_height_ext(t1,24,w)+bh+24)/2;

draw_set_colour(16743936);
draw_set_valign(fa_top);
draw_text_ext(DW/2,DH/2-hh,t1,24,w);
draw_set_valign(fa_middle);
draw_set_colour(c_white);

if B1(MA,DW/2-w/2,DH/2+hh-bh,DW/2+w/2,DH/2+hh,t2,16256) url_open("http://www.on.br/daed/pequeno_cientista/conteudo/revista/pdf/atmosfera.pdf");
if Bspr(MA,bcontinuar,0,DW/2,DH-80) {background_colour=c_black;PlaySom(sound1,0,VSom,0);To=1};

#define quiz_atmosfera2
A_Terra.x += tinc(A_Terra.x,64,DW/2);
A_Terra.SRaio += tinc(A_Terra.SRaio,64,DH/3);
A_Terra.ARaio = A_Terra.SRaio/6367.25*480;

DrawCircle(A_Terra.x,A_Terra.y,A_Terra.SRaio,16743936,16743936,1,1,64,A_Terra.SRaio);
DrawCircle(A_Terra.x,A_Terra.y,A_Terra.SRaio+A_Terra.ARaio,16743936,16743936,.5,0,64,A_Terra.ARaio);

draw_set_font(algerian16);
draw_text(A_Terra.x,A_Terra.y,"Este é o#Planeta Terra");
draw_set_font(arialbold12);
draw_text(DW/2,DH-48,"Toque na Terra");

if !To&&device_mouse_check_button_pressed(0,mb_left)&&point_in_circle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),A_Terra.x,A_Terra.y,A_Terra.SRaio) {PlaySom(sound1,0,VSom,0);SID++}

#define quiz_atmosfera3
A_INDEX++;
A_Terra.x += tinc(A_Terra.x,64,DW/2);
A_Terra.y += tinc(A_Terra.y,64,DH);
A_Terra.SRaio += tinc(A_Terra.SRaio,32,DH*.66);
A_Terra.ARaio = A_Terra.SRaio/6367.25*480;

DrawCircle(A_Terra.x,A_Terra.y,A_Terra.SRaio,16743936,16743936,1,1,64,A_Terra.SRaio);
DrawCircle(A_Terra.x,A_Terra.y,A_Terra.SRaio+A_Terra.ARaio,16743936,16743936,.5,0,64,A_Terra.ARaio);

var yy = A_Terra.y-A_Terra.SRaio-A_Terra.ARaio/2;
DrawCircle(A_Terra.x,yy,8,c_orange,c_orange,1,1,12,8);
draw_line_width_colour(A_Terra.x,yy,A_Terra.x+64*min(1,A_INDEX/30),yy,4,c_orange,c_orange);
draw_set_font(algerian16);
draw_set_halign(fa_left);
draw_text_colour(A_Terra.x+70*min(1,A_INDEX/30),yy,"Esta é a#Atmosfera Terrestre",c_orange,c_orange,c_orange,c_orange,min(1,A_INDEX/30));
draw_set_halign(fa_center);
draw_set_font(arialbold12);
draw_text(A_Terra.x,A_Terra.y-A_Terra.SRaio/2,"A atmosfera terrestre possui, no#total, 480 quilômetros de espessura.##Nossa atmosfera não se distribui homogeneamente e, por#conseguinte, podemos dizer que sua maior parte, cerca de 80%#dela, está na região situada a até 16 quilômetros de altura.");

draw_text(DW/2,DH-48,"Toque na Terra");
if !To&&device_mouse_check_button_pressed(0,mb_left)&&point_in_circle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),A_Terra.x,A_Terra.y,A_Terra.SRaio) {PlaySom(sound1,0,VSom,0);SID++}

#define quiz_atmosfera4
draw_rectangle_colour(0,0,DW,DH,0,0,0,0,0);
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var mj = device_mouse_check_button_pressed(0,mb_left);
var mk = device_mouse_check_button(0,mb_left);
A_Terra.SRaio += tinc(A_Terra.SRaio,6,32);

var al = array_length_1d(Q);
draw_set_font(calibri11);
draw_set_colour(0);
BC[0]=0;
var c,dis = 1000,disid=-1;
for (var i=0; i<al; i++) {
    Q[i].Raio += tinc(Q[i].Raio,6,96);
    Q[i].x += tinc(Q[i].x,32,128);
    Q[i].y += tinc(Q[i].y,32,DH/(al+1)*(i+1));
    c = Q[i].Cor;
    if c==16743936 BC[0] = 1;
    if A_Terra.Drag {
        if point_distance(Q[i].x,Q[i].y,A_Terra.x,A_Terra.y)<dis {
            dis = point_distance(Q[i].x,Q[i].y,A_Terra.x,A_Terra.y);
            disid = i;
        }
    }
    DrawCircle(Q[i].x,Q[i].y,Q[i].Raio*.8,c,c,1,1,32,Q[i].Raio*.8);
    DrawCircle(Q[i].x,Q[i].y,Q[i].Raio,c,c,.5,0,32,Q[i].Raio*.2);
    draw_text_ext(Q[i].x,Q[i].y,Q[i].Txt,20,Q[i].Raio);
}
draw_set_font(arialbold12);
if BC[0] {
    BC[1] += tinc(BC[1],32,DW/2);
    BC[2] += tinc(BC[2],32,DH-96);
    BC[3] += tinc(BC[3],12,64);
    c = c_white;
    if A_Terra.Drag {
        if point_distance(BC[1],BC[2],A_Terra.x,A_Terra.y)<dis {
            disid = -1;
            BC[1] += tinc(BC[1],16,mx);
            BC[2] += tinc(BC[2],16,my);
            if point_in_circle(mx,my,BC[1],BC[2],BC[3]) {
                c = 16743936;
                if !mk {
                    A_INDEX=0;
                    with(A_Terra) instance_destroy();
                    SID++;
                    PlaySom(sound1,0,VSom,0);
                    background_colour = make_colour_rgb(0,16,32);
                    exit;
                }
            }
        }
    }
    DrawCircle(BC[1],BC[2],BC[3]*.8,c,c,1,1,24,BC[3]*.8);
    DrawCircle(BC[1],BC[2],BC[3],c,c,.5,0,24,BC[3]*.2);
    draw_text(BC[1],BC[2],"Confirmar");
}
draw_set_colour(c_white);

if disid!=-1 {
    Q[disid].x += tinc(Q[disid].x,16,mx);
    Q[disid].y += tinc(Q[disid].y,16,my);
    if point_in_circle(A_Terra.x,A_Terra.y,Q[disid].x,Q[disid].y,Q[disid].Raio) {
        c = 16743936;
        if !mk {
            for (i=0; i<al; i++) Q[i].Cor = c_white;
            Q[disid].Cor = 16743936;
            PlaySom(sound1,0,VSom,0);
        }
    }
}

if !A_Terra.Drag {
    A_Terra.x += tinc(A_Terra.x,64,DW-64);
    A_Terra.y += tinc(A_Terra.y,64,DH/2-48);
    A_Terra.ARaio += tinc(A_Terra.ARaio,6,A_Terra.SRaio/3);
    if mj&&point_in_circle(mx,my,A_Terra.x,A_Terra.y,A_Terra.SRaio+A_Terra.ARaio) {PlaySom(sound1,0,VSom,0);A_Terra.Drag=1};
} else {
    if !mk A_Terra.Drag = 0;
    A_Terra.x = mx;
    A_Terra.y = my;
    A_Terra.ARaio += tinc(A_Terra.ARaio,12,A_Terra.SRaio*2);
}

DrawCircle(A_Terra.x,A_Terra.y,A_Terra.SRaio,16743936,16743936,1,1,24,A_Terra.SRaio);
DrawCircle(A_Terra.x,A_Terra.y,A_Terra.SRaio+A_Terra.ARaio,16743936,16743936,.5,0,24,A_Terra.ARaio);

#define quiz_atmosfera5
var alpha = draw_get_alpha();

BC[1] += tinc(BC[1],32,DW/2);
BC[2] += tinc(BC[2],32,DH/2);
BC[3] += tinc(BC[3],64,DW);
c = c_orange*(!BC[0])+16743936*BC[0];
DrawCircle(BC[1],BC[2],BC[3],c,c,alpha,alpha,24,BC[3]);

A_INDEX++;
var mj = device_mouse_check_button_pressed(0,mb_left);

var al = array_length_1d(Q);
draw_set_font(calibri11);
draw_set_colour(0);
BC[0]=1;
var c,dis = 1000,disid=-1;
for (var i=0; i<al; i++) {
    Q[i].Raio += tinc(Q[i].Raio,6,12+84*Q[i].R);
    if Q[i].Cor==16743936&&!Q[i].R BC[0]=0;
    DrawCircle(Q[i].x,Q[i].y,Q[i].Raio*.8,Q[i].Cor,Q[i].Cor,alpha,alpha,32,Q[i].Raio*.8);
    DrawCircle(Q[i].x,Q[i].y,Q[i].Raio,Q[i].Cor,Q[i].Cor,alpha*.5,0,32,Q[i].Raio*.2);
    if Q[i].R draw_text_ext(Q[i].x,Q[i].y,Q[i].Txt,20,Q[i].Raio);
}
draw_set_colour(c_white);

draw_set_font(algerian48);
draw_set_alpha(A_INDEX/30);
var t = "INCORRETO";
if BC[0] t = "CORRETO";
draw_text(BC[1],BC[2],t);
draw_set_font(arialbold12);
draw_text(DW/2,DH-48,"Toque na tela para continuar");
draw_set_alpha(alpha);

if !To&&device_mouse_check_button_pressed(0,mb_left) {if BC[0] {repeat(5) {instance_create(random(DW),random(DH),ttd_astrocoin)}} else {repeat(2) {instance_create(random(DW),random(DH),ttd_astrocoin)}};PlaySom(sound1,0,VSom,0);To=1}