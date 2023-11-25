///OBA_ASTRONOMIA1_PULAR()
if NewGUI!=-1exit;
ini_write_real("OBA","ASTRONOMIA1_PULOS",ini_read_real("OBA","ASTRONOMIA1_PULOS",0)+1);
NewGUI=SOBA_get_question(1,"Astronomia");
PlaySom(sound1,0,VSom,0);
