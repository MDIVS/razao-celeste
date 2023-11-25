///OBA_ASTRONAUTICA1_PULAR()
if NewGUI!=-1exit;
ini_write_real("OBA","ASTRONAUTICA1_PULOS",ini_read_real("OBA","ASTRONAUTICA1_PULOS",0)+1);
NewGUI=SOBA_get_question(1,"Astronáutica");
PlaySom(sound1,0,VSom,0);
