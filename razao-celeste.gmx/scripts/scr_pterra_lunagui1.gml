#define scr_pterra_lunagui1
TIMER = 1200;
VIEW_OBJECT = -1;
Joys_device(JOYS,-1);

#define scr_pterra_lunagui2
if Joys_distance(JOYS)>0 {
    Chat_count = 0;
    Chat_txt = 'UAU!!! Está funcionando! ESTÁ FUNCIONANDO!!!#Mova-se até o local indicado!';
    instance_create(300,-800,obj_dropposition);
    GUI = scr_pterra_lunagui3;
}

VariavelN = 0;
VIEW_OBJECT = obj_pmg.id;

#define scr_pterra_lunagui3
TIMER = 1200;
if instance_exists(obj_dropposition) exit;
VariavelN+=1;

if VariavelN==1 {
    Chat_count = 0;
    Chat_txt = 'A nave expele o gás hélio (ação) e o gás hélio empurra a nave (reação)!#- Mova-se, mova-se!';
    instance_create(0,800,obj_dropposition);
}
if VariavelN==2 {
    Chat_count = 0;
    Chat_txt = 'Isso! Continue!';
    instance_create(-300,-800,obj_dropposition);
}
if VariavelN==3 {
    Chat_count = 0;
    Chat_txt = 'Parabéns!!!';
    B[0,1] = scr_pterra_luanaact8;
    GUI = -1;
    xto = DW/2;
    yto = DH/2;
    sto = DH*.3/sprite_get_height(spr_she1);
}

#define scr_pterra_luanaact1
B[0,1] = scr_pterra_luanaact2;
Chat_count = 0;
Chat_txt = "Começaremos com o básico: Vamos aprender a mover a espaçonave!";
yto = DH-96;
sto = DH*.2/sprite_get_height(spr_she1);

#define scr_pterra_luanaact2
B[0,1] = scr_pterra_luanaact3;
Chat_count = 0;
Chat_txt = "No espaço, não há como mover-se com rodas como um carro pois o carro precisa empurrar o chão (ação) para ser empurrado de volta (reação).";

#define scr_pterra_luanaact3
B[0,1] = scr_pterra_luanaact4;
Chat_count = 0;
Chat_txt = "Da mesma maneira, não há como usar uma turbina aqui, pois a turbina empurra o ar (ação), que empurra a turbina de volta (reação), para que o avião se mova.";

#define scr_pterra_luanaact4
B[0,1] = scr_pterra_luanaact5;
Chat_count = 0;
Chat_txt = 'Mas afinal, o que todos esses eventos tem em comum?#- A Terceira Lei de Newton!';

#define scr_pterra_luanaact5
B[0,1] = scr_pterra_luanaact6;
Chat_count = 0;
Chat_txt = 'Segundo Newton, toda ação possui uma reação com mesma intensidade e sentido oposto. Isso explica bem o fato do carro empurrar o chão e o avião empurrar o ar mas... estamos no vácuo!';

#define scr_pterra_luanaact6
B[0,1] = scr_pterra_luanaact7;
Chat_count = 0;
Chat_txt = 'Uma solução eficiente é, ao invés de empurrar, jogar fora alguma coisa. Na teoria, se chutarmos uma bola, a bola "nos chuta de volta". Parece bizarro, mas vamos testar.';

#define scr_pterra_luanaact7
//B[0,1] = scr_pterra_luanaact8;
Chat_count = 0;
Chat_txt = 'A sua nave está equipada com propulsores a base de hélio, MOVA o JOYSTICK em AZUL (ou aperte W/A/S/D) e veremos se essa Terçeira Lei de Newton funciona mesmo!!!';
GUI = scr_pterra_lunagui2;
VIEW_OBJECT = obj_pmg;
B[0,1] = -1;
sto = 64/sprite_get_height(spr_she1);
xto = sprite_get_xoffset(spr_she1)*sto+8;
yto = sprite_get_yoffset(spr_she1)*sto+8;

#define scr_pterra_luanaact8
instance_destroy();