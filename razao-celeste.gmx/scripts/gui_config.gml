draw_background_tiled_ext(tx_null,0,0,1,1,make_colour_hsv(image_index,255,64),1);

VSom = Botao_rect100(DW*.2,DH/3,DW*.8,DH/3+24,VSom,DH*.066,"Som",4210432,c_aqua,1);
VMus = Botao_rect100(DW*.2,DH/3+32,DW*.8,DH/3+56,VMus,DH*.066,"Musica",4210432,c_aqua,1);
FDbg = Botao_rect01(DW/2-100,DH/2-16,DW/2+100,DH/2+16,FDbg,"Desenvolvedor",0,c_white,1);

ini_open("Salvo.ini");
ini_write_real("Config","FDbg",FDbg);
ini_write_real("Config","VSom",VSom);
ini_write_real("Config","VMus",VMus);
ini_close();

if (Botao_rect(DW/3-60,DH*.8-56,DW/3+60,DH*.8-32,32,"Resetar",0,c_orange,1)) GUI = gui_resetar;
if (Botao_rect(DW/3-40,DH*.8-24,DW/3+40,DH*.8,32,"Sair",0,c_orange,1)) game_end();
if (Botao_rect(DW/2-50,DH-36,DW/2+50,DH-12,32,"Voltar",0,c_lime,1)) {
    GUI = Now[0];
    Now[0] = 0;
}
