///_pesq_orbita()
if (Title != "") exit;

var xx = DW/2+24;
var yy = DH-32;

if (scr_buttonspr(xx,yy,spr_flask_blue,0,c_gray,c_dkgray,1)) {
    DRA=-1; GUI=_pesq_orbita_pesquisando;
    Now[0]=0; Now[1]=instance_create(0,0,object0); Now[2]=_ini_path_orbital(0);
    with(Now[1]) path_start(sy.Now[2],5,1,1);
    PlaySom(sound1,0,VSom,0);
}

draw_set_font(font_CooperBlack);
draw_text(xx,yy,round((PESQ[2]-PESQ[1])/room_speed));
draw_set_font(font_CourierNew);

PESQ[1] = min(PESQ[1]+1,PESQ[2]);
if (PESQ[1] == PESQ[2]) {
    DRA=-1; GUI=_pesq_orbita_complete_01;
    Now[0]=0; Now[1]=0; Now[2]=0;
    PESQ[0]=scr_pesquisar; PESQ[1]=0; PESQ[2]=0;
    ini_open("Salvo.ini"); ini_write_real("PESQ","translacao "+string(PLANETA.Nome),1); ini_close();
    image_index = 0;
    PlaySom(sound3,0,VSom,0);
}
