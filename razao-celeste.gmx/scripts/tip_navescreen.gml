#define tip_navescreen
draw_set_colour(16743936);
draw_arrow(DW/2-96,DH/2+32,150,DH-96,32);

if instance_exists(obj_nvplayer){
    Tip_navescreen=tip_navescreen2;
    GUI=tip_navescreen2;
};

draw_text(DW/2,DH/2,"Selecione uma espaçonave de sua preferência");
draw_set_colour(c_white);

if sy.Now[1]!=3popup_create("Por favor, selecione uma espaçonave");
sy.Now[1]=3;

#define tip_navescreen2
if !instance_exists(obj_nvplayer){
    Tip_navescreen=tip_navescreen;
    GUI=tip_navescreen;
    popup_create("Por favor, equipe uma arma em uma espaçonave");
    exit;
};

var ws = sy.Now[4].Weap, ok=0;;

for (var i=0; i<array_length_1d(ws); i++) {
    var dba=ws[i];
    if dba[0]!=-1{ini_open("Salvo.ini");ini_write_real("Tutorial","Tip_navescreen",0);ini_close();Tip_navescreen=-1;GUI=-1}
}

if sy.Now[1]!=3popup_create("Por favor, equipe uma arma antes de voltar ao menu");
sy.Now[1]=3;