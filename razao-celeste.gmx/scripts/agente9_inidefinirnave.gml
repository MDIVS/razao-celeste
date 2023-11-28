#define agente9_inidefinirnave
ini_open("Salvo.ini");
if ini_read_real("Conq","Primeira Arma",0) return(0);
ini_close();

personchat_txt(Chat,"Comandante, não há tempo a perder.#Equipe a sua espaçonave e prepare-se para a batalha!");

owms_tox(OWMS,DW/3);
owms_toy(OWMS,DH/2);
owms_toscale(OWMS,DH/10/sprite_get_height(sprite_index));
GUI = agente9_guidefinirnave;

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

#define agente9_guidefinirnave
ini_open("Salvo.ini");
if ini_read_real("Conq","Primeira Arma",0) {
    personchat_txt(Chat,"Muito bem! Gostei de ti, é àgil.#Agora volte para o menu anterior.");
    GUI = -1;
}
ini_close();

if !instance_exists(io_menu) exit;

io_menu.BNave[0] += (x+personchat_x1(Chat)+personchat_width(Chat)/2-io_menu.BNave[0])/10;
io_menu.BNave[1] += (y+personchat_y2(Chat)+sprite_get_yoffset(spr_bedit)+16-io_menu.BNave[1])/10;