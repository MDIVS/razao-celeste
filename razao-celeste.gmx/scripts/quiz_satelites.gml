#define quiz_satelites
view_wview = DW;
view_hview = DH;

var i=instance_create(0,0,io_syquiz);
with(i) {
    A_INDEX = 0;
    A_Terra = instance_create(DW/2,DH/2,object0);
    A_Terra.SRaio = 0;
    A_Terra.ARaio = 0;
    A_Terra.Drag = 0;
    
    A_Sputnik = instance_create(choose(0,DW,DW/2),choose(0,DH,DH/2),object0);
    A_Sputnik.sprite_index = spr_sputnik;
    A_Sputnik.image_xscale = 0;
    A_Sputnik.image_yscale = 0;
    A_Sputnik.Dis = 0;
    A_Sputnik.Dir = 0;
    
    Q[0] = instance_create(DW/3,DH*.25,object0);
    Q[1] = instance_create(DW/3,DH*.50,object0);
    Q[2] = instance_create(DW/3,DH*.75,object0);
    
    Q[0].Raio = 0;
    Q[1].Raio = 0;
    Q[2].Raio = 0;
    
    Q[0].Cor = c_white;
    Q[1].Cor = c_white;
    Q[2].Cor = c_white;
    
    Q[0].Txt = "O Sputnik I foi o principal estopim para o início da Corrida Espacial";
    Q[1].Txt = "O Sputnik I foi lançado pelos Estados Unidos em 4 de Outubro de 1897";
    Q[2].Txt = "O Sputnik I orbitou a Lua por 22 dias, até que suas baterias acabaram";
    
    Q[0].R = 1;
    Q[1].R = 0;
    Q[2].R = 0;
    
    BC[0] = 0;
    BC[1] = DW/2;
    BC[2] = DH;
    BC[3] = 0;
    
    STP[0] = -1;
    DRA[0] = -1;
    GUI[0] = quiz_satelites1;
    
    STP[1] = -1;
    DRA[1] = -1;
    GUI[1] = quiz_satelites2;
    
    STP[2] = -1;
    DRA[2] = -1;
    GUI[2] = quiz_satelites3;
    
    STP[3] = -1;
    DRA[3] = -1;
    GUI[3] = quiz_atmosfera4;
    
    STP[4] = -1;
    DRA[4] = -1;
    GUI[4] = quiz_atmosfera5;
    
    SCS = 5;
}

#define quiz_satelites1
draw_rectangle_colour(0,0,DW,DH,0,0,0,0,0);
with(A_Sputnik) {
    x += tinc(x,64,DW/2);
    y += tinc(y,64,DH/2-96);
    image_xscale += tinc(image_xscale,.05,DW/2/sprite_get_width(spr_sputnik));
    image_yscale = image_xscale;
    draw_self();
    draw_set_font(algerian16);
    draw_text_transformed_colour(DW-x,DH-y,"Este é o Sputnik I",image_xscale,image_yscale,image_angle,c_white,c_white,c_white,c_white,image_xscale);
    draw_set_font(arialbold12);
    draw_text(DW/2,DH-48,"Toque no Sputnik");
}

if !To&&device_mouse_check_button_pressed(0,mb_left)&&position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),A_Sputnik) {PlaySom(sound1,0,VSom,0);SID++;background_colour=0}

#define quiz_satelites2
with(A_Sputnik) {
    x += tinc(x,64,DW/2);
    y += tinc(y,64,DH*.7);
    image_xscale += tinc(image_xscale,.05,DH*.3/sprite_get_height(spr_sputnik));
    image_yscale = image_xscale;
    image_angle += tinc(image_angle,9,90);
    draw_self();
    var t = "O Sputnik 1 foi o primeiro#satélite artificial da Terra.##Foi lançado pela União Soviética em 4 de outubro#de 1957, na Unidade de teste de foguetes da#União Soviética, como colaboração soviética#pelos festejos do Ano Internacional da Geofísica.";
    draw_text(DW/2,DH/2-string_height(t)/2,t);
    draw_text(DW/2,DH-48,"Toque no Sputnik");
}

if !To&&device_mouse_check_button_pressed(0,mb_left)&&position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),A_Sputnik) {PlaySom(sound1,0,VSom,0);SID++}

#define quiz_satelites3
with(A_Terra) {
//    x += tinc(x,32,DW/2);
//    y += tinc(y,32,DH/2);
    SRaio += tinc(SRaio,6,DH/3);
    ARaio = SRaio/6367.25*480;
    
    DrawCircle(x,y,SRaio,16743936,16743936,1,1,64,SRaio);
    DrawCircle(x,y,SRaio+ARaio,16743936,16743936,.5,0,64,ARaio);
    
    var t = "Após o lançamento, os parâmetros da órbita do satélite foram verificados com perigeu de 228,6 km e apogeu de 947 km, inicialmente completando uma volta em torno da Terra em incríveis 96,17 minutos.";
    draw_text_ext_transformed(x,y,t,20,DH/3,SRaio/(DH/3),SRaio/(DH/3),0);
    draw_text(DW/2,DH-48,"Toque na Terra");
}

with(A_Sputnik) {
    Dir++;
    var dis = DH/3+64;
    x += tinc(x,dis/10,other.A_Terra.x+lengthdir_x(dis,Dir));
    y += tinc(y,dis/10,other.A_Terra.y+lengthdir_y(dis,Dir));
    image_xscale += tinc(image_xscale,.05,32/sprite_get_height(spr_sputnik));
    image_yscale = image_xscale;
    var dd = angle_difference(image_angle,point_direction(x,y,other.A_Terra.x,other.A_Terra.y)+90);
    image_angle += min(2,abs(dd))*sign(dd);
    draw_self();
}

if !To&&device_mouse_check_button_pressed(0,mb_left)&&point_in_circle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),A_Terra.x,A_Terra.y,A_Terra.SRaio+A_Terra.ARaio) {PlaySom(sound1,0,VSom,0);SID++}