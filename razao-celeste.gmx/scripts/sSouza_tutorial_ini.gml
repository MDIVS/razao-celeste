#define sSouza_tutorial_ini
Pre_n = 3;
Chat_txt = "Como mover uma espaçonave no vácuo do espaço?";
bAct[0,0] = "Como?";
bAct[0,1] = "Uma das opções viáveis é ejetando algum material, teoricamente, a força aplicada ao ejetar o material será devolvida com a mesma intensidade e sentido oposto.";
bAct[1,0] = "Vamos tentar!";
bAct[1,1] = "CALMA CARAMBA";
bAct[2,0] = "Oxi, que foi?";
bAct[2,1] = sSouza_tutorial_1;

VarResidual = Joys_r(JOYS);
Joys_r(JOYS,1);
STP = -1;

#define sSouza_tutorial_1
bAct = 0; iAct = 0; bAct[0,0] = 0;
Chat_txt = "Primeiro, deixa eu te mostrar o seu Joystick.#Pressione-o para poder se movimentar...*";
Chat_count = 0;
STP = sSouza_tutorial_2;

#define sSouza_tutorial_2
var r = Joys_r(JOYS);
Joys_r(JOYS,r+(VarResidual-r)/10);
if Joys_device(JOYS)!=-1 {
    Chat_txt = "Viu, funcionou! Mantenha o Joystick pressionado e tente alcançar um dos anéis azuis no mapa."
    Chat_count = 0;
    STP = sSouza_tutorial_3;
    instance_create(VIEW_OBJECT.x+300,VIEW_OBJECT.y,obj_dropposition);
}

#define sSouza_tutorial_3
if !instance_exists(obj_dropposition) {
    Chat_txt = "ISSOO!!! A nave expele o gás e o gás empurra a nave.#Termine a missão, comandante - dirija-se aos locais destacados em azul.";
    Chat_count = 0;
    var dir = 0;
    repeat(9) {
        instance_create(VIEW_OBJECT.x+lengthdir_x(200,dir),VIEW_OBJECT.y+lengthdir_y(200,dir),obj_dropposition);
        dir += 360/9;
    }
    STP = sSouza_tutorial_gatilhend;
}

#define sSouza_tutorial_gatilhend
if !instance_exists(obj_dropposition) {
    STP = -1;
    EndScreen_alpha = 0;
    GUI = sSouza_tutorial_guend;
    ended = 0;
    Chat_txt = "YEESSS";
    Chat_count = 0;
}

#define sSouza_tutorial_guend
draw_set_alpha(EndScreen_alpha);
draw_set_colour(make_colour_rgb(32,96,192));
draw_rectangle(0,0,DW,DH,0);
draw_set_colour(c_white);
draw_set_alpha(1);

if ended {
    wy += -wy/10;
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);
    var mj = device_mouse_check_button_pressed(0,mb_left);
    
    draw_set_colour(c_.myblue);
    var yy = wy+DH-224, mi = -1;
    for (var i=0; i<3; i++) {
        draw_roundrect(DW/4,yy,DW*.75,yy+32,q_select==i);
        if point_in_rectangle(mx,my,DW/4,yy,DW*.75,yy+32) {mi = i;
            if mj {if q_select == i q_select = -1 else q_select = i};
        }
        if mi==i draw_roundrect(DW/4-2,yy-2,DW*.75+2,yy+34,1);
        yy+=48;
    }
    
    if q_select != -1 {
        if point_in_rectangle(mx,my,DW/2-64,yy+16,DW/2+64,yy+48) {
            draw_set_colour(c_aqua);
            if mj {
                var add = 1+3*(q_select==1);
                ini_open("Salvo.ini");
                ini_write_real("OBA","Astrocoins",ini_read_real("OBA","Astrocoins",0)+add);
                ini_close();
                popup_create(string(add),spr_astrocoin);
                PlaySom(sound4,0,VSom,0);
                if q_select==1 Chat_txt = "ISSO COMANDANTE!#Nossos propulsores expelem o gás e o gás nos leva ao infinito e além!!!##"
                else Chat_txt = "POXA COMANDANTE!#Desse jeito devo ressaltar que a nossa missão foi um fracasso.##";
                Chat_txt += "Hoje aprendemos que a Terceira Lei de Newton - a Lei da Ação e Reação - pode nos proporcionar o movimento, mesmo no vácuo do espaço!!!";
                Chat_count = 0;
                GUI = sSouza_tutorial_destroy;
                ended = 0;
                CorrectI = 0;
                xto = DW/2-200;
                yto = DH-320-q_txt_h;
                sto = 128/sprite_get_width(sprite_index);
            }
        }
    } else draw_set_colour(c_gray);
    draw_roundrect(DW/2-64,yy+16,DW/2+64,yy+48,0);
    
    draw_set_colour(c_white);
    draw_text_ext(DW/2,wy+DH-240-q_txt_h/2,q_txt,20,DW/2);
    draw_text(DW/2,wy+DH-208,"Anderssen Hawk");
    draw_text(DW/2,wy+DH-160,"Isaac Newton");
    draw_text(DW/2,wy+DH-112,"Hubble");
    draw_text(DW/2,wy+DH-48,"Confirmar");
    
} else {
    EndScreen_alpha += .05;
    if EndScreen_alpha >= 1 {
        with(all) {if id!=other.id && !persistent instance_destroy()}
        
        xto = DW/2-100;
        Chat_txt = "Parabéns!!!#Responda para finalizar a missão.#Resposta certa: 4 Astrocoins#Resposta errada: 1 Astrocoin";
        Chat_count = 0;
        
        ended = 1;
        wy = DH;
        q_txt = "A Lei da Ação e Reação diz que toda ação possui uma reação com a mesma intensidade e sentido oposto.##Qual dos citados abaixo desenvolveu a ideia da ação e reação?";
        q_txt_h = string_height_ext(q_txt,20,DW/2);
        q_select = -1;
    }
}

#define sSouza_tutorial_destroy
draw_set_alpha(EndScreen_alpha);
draw_set_colour(make_colour_rgb(32,96,192));
draw_rectangle(0,0,DW,DH,0);
draw_set_colour(c_white);
draw_set_alpha(1);

if ended {
    wy += (DH-wy)/10;
    EndScreen_alpha -= 1/30;
    image_alpha = EndScreen_alpha;
    if EndScreen_alpha <= 0 {room_goto(room0); instance_destroy()};
}

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var mj = device_mouse_check_button_pressed(0,mb_left);

draw_set_colour(c_.myblue);
var yy = wy+DH-224, mi = -1;
for (var i=0; i<3; i++) {
    draw_roundrect(DW/4,yy,DW*.75,yy+32,q_select==i);
    yy+=48;
}

if point_in_rectangle(mx,my,DW/2-64,yy+16,DW/2+64,yy+48) {
    draw_set_colour(c_aqua);
    if mj ended = 1
}
draw_roundrect(DW/2-64,yy+16,DW/2+64,yy+48,0);

draw_set_colour(c_white);
draw_text_ext(DW/2,wy+DH-240-q_txt_h/2,q_txt,20,DW/2);
draw_text(DW/2,wy+DH-208,"Anderssen Hawk");
draw_text(DW/2,wy+DH-160,"Isaac Newton");
draw_text_transformed_colour(DW*.6,wy+DH-160,"Isaac Newton",2-CorrectI,2-CorrectI,-20,c_orange,c_orange,c_yellow,c_yellow,CorrectI);
draw_text(DW/2,wy+DH-112,"Hubble");
draw_text(DW/2,wy+DH-48,"Finalizar");

CorrectI += (1-CorrectI)/10;