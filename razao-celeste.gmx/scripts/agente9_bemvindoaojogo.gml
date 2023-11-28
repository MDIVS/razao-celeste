#define agente9_bemvindoaojogo
if ini_read_real("Conq","Primeira Arma",0)||ini_read_real("OBA","Astrocoins",0)>=5 return(0);

personchat_txt(Chat,"Olá comandante, seja bem vindo(a) ao jogo.#Sou a nona agente, sua guia nesta aventura!");
owms_set_topoint(OWMS,DW/3,DH/2);
owms_toscale(OWMS,DH/7/sprite_get_height(sprite_index));

bAct[0,0] = "Certo, Agente 9.";
bAct[0,1] = agente9_iniprimeirosastrocoins;

bAct[1,0] = "Pegar Astrocoin";
bAct[1,1] = agente9_primeiroastrocoinend;

iAct = 0;

with(io_menu) {
    BConf[1]=-200;
    BConq[1]=-200;
    BQuiz[1]=DH+200;
    BSoSy[1]=DH+200;
    BCamp[1]=DH+200;
    BNave[1]=DH+200;
    BIBDP[2]=0;
}

return(1);

#define agente9_iniprimeirosastrocoins
ini_open("Salvo.ini");
if ini_read_real("Conq","Primeira Arma",0)||ini_read_real("OBA","Astrocoins",0)>=5 {ini_close();return(0)}
ini_close();

personchat_txt(Chat,"Esse é o Astrocoin, sua principal moeda de troca.#Pegue alguns Astrocoins, considere um presente de boas vindas.");

bAct[0,0] = "Pegar Astrocoin";
bAct[0,1] = agente9_primeiroastrocoinend;
iAct = 0;

STP = agente9_iniprimeirosastrocoins_stp;

with(io_menu) {
    BConf[1]=-200;
    BConq[1]=-200;
    BQuiz[1]=DH+200;
    BSoSy[1]=DH+200;
    BCamp[1]=DH+200;
    BNave[1]=DH+200;
    BIBDP[2]=0;
}

return(1);

#define agente9_iniprimeirosastrocoins_stp
oAstrocoin.xto = owms_tox(OWMS)+personchat_x1(Chat)+personchat_width(Chat)/2;
oAstrocoin.yto = owms_toy(OWMS)+personchat_y2(Chat)+128;

#define agente9_primeiroastrocoinend
STP = -1;
ini_open("Salvo.ini");
ini_write_real("OBA","Astrocoins",ini_read_real("OBA","Astrocoins",0)+6);
agente9_inidefinirnave();
ini_close();
popup_create(string(6),spr_astrocoin);
PlaySom(sound4,0,VSom,0);

oAstrocoin.xto = DW/2;
oAstrocoin.yto = 48;

iAct = 5;
bAct[0,0] = "";
bAct[0,1] = "";