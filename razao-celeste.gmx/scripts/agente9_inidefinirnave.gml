#define agente9_inidefinirnave
ini_open("Salvo.ini");
if ini_read_real("Conq","Primeira Arma",0) return(0);
ini_close();

Chat_txt = "Comandante, não há tempo a perder.#Equipe a sua espaçonave e prepare-se para a batalha!";
Chat_count = 0;
xto = DW/3;
yto = DH/2;
sto = DH/5/sprite_get_width(sprite_index);
GUI = agente9_guidefinirnave;

with(io_menu) {
    BConf[1]=-200;
    BConq[1]=-200;
    BQuiz[1]=DH+200;
    BSoSy[1]=DH+200;
    BCamp[1]=DH+200;
    BNave[1]=DH+200;
}

return(1);

#define agente9_guidefinirnave
ini_open("Salvo.ini");
if ini_read_real("Conq","Primeira Arma",0) {
    Chat_txt = "Muito bem! Gostei de ti, é àgil.#Agora volte para o menu anterior.#(toque no ícone da casinha para voltar)";
    Chat_count = 0;
    GUI = -1;
}
ini_close();

if !instance_exists(io_menu) {
    xto = DH*.1;
    yto = DH*.1;
    sto = DH*.1/sprite_get_height(sprite_index);
    exit;
}
io_menu.BNave[0] += (x+Chat_addx+Chat_w/2-io_menu.BNave[0])/10;
io_menu.BNave[1] += (y+Chat_addy+Chat_h+sprite_get_yoffset(spr_bedit)+16-io_menu.BNave[1])/10;