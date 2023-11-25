///OBA_ASTRONAUTICA1_WRONG()
if NewGUI!=-1exit;
ini_write_real("OBA","ASTRONAUTICA1_ERROS",ini_read_real("OBA","ASTRONAUTICA1_ERROS",0)+1);
NewGUI=SOBA_get_question(1,"Astronáutica");
PlaySom(snd_wrong,0,VSom,0);
