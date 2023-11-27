#define agente9_bemvindoaojogo
if ini_read_real("Conq","Primeira Arma",0)||ini_read_real("OBA","Astrocoins",0)>=5 return(0);

Chat_txt = "Olá comandante, seja bem vindo(a).##Sou a 9° e última agente das Tropas Cruzeiras.##Por ser a última, pode me chamar de Agente 9.";
Chat_count = 0;
xto = DW/3;
yto = DH/2;
sto = DH/5/sprite_get_width(sprite_index);

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
}

return(1);

#define agente9_iniprimeirosastrocoins
ini_open("Salvo.ini");
if ini_read_real("Conq","Primeira Arma",0)||ini_read_real("OBA","Astrocoins",0)>=5 {ini_close();return(0)}
ini_close();

Chat_txt = "Esse é o Astrocoin, sua principal moeda de troca.#Pegue alguns Astrocoins, considere um presente de boas vindas.";
Chat_count = 0;
xto = DW/3;
yto = DH/2;
sto = DH/5/sprite_get_width(sprite_index);

bAct[0,0] = "Pegar Astrocoin";
bAct[0,1] = agente9_primeiroastrocoinend;
iAct = 0;

oAstrocoin.xto = xto+Chat_addx+Chat_wmax/2;
oAstrocoin.yto = yto+Chat_addy+Chat_h+64;

with(io_menu) {
    BConf[1]=-200;
    BConq[1]=-200;
    BQuiz[1]=DH+200;
    BSoSy[1]=DH+200;
    BCamp[1]=DH+200;
    BNave[1]=DH+200;
}

return(1);

#define agente9_primeiroastrocoinend
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