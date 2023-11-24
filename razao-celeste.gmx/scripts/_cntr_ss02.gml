///_cntr_ss02()
if (Title != "") exit;

var xx = sy.DW/2-24;
var yy = sy.DH-32;

if (scr_buttonspr(xx,yy,spr_ferramenta,0,c_gray,c_dkgray,1)) {
    DRA=-1; GUI=_pesq_translacao_pesquisando;
    Now[0]=0; Now[1]=instance_create(0,0,object0); Now[2]=_ini_path_orbital(0);
    with(Now[1]) path_start(sy.Now[2],5,1,1);
    PlaySom(sound1,0,VSom,0);
}

draw_set_font(font_CooperBlack);
draw_text(xx,yy,round((CNTR[2]-CNTR[1])/room_speed));
draw_set_font(font_CourierNew);

CNTR[1] = min(CNTR[1]+1,CNTR[2]);
if (CNTR[1] == CNTR[2]) {
    DRA=-1; GUI=_pesq_translacao_complete_01;
    Now[0]=0; Now[1]=0; Now[2]=0;
    CNTR[0]=scr_construcao; CNTR[1]=0; CNTR[2]=0;
    image_index = 0;
    PlaySom(sound3,0,sy.VSom,0);
}
