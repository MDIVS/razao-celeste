///OBA_ASTRONOMIA1_WRONG()
if NewGUI!=-1exit;
ini_write_real("OBA","ASTRONOMIA1_ERROS",ini_read_real("OBA","ASTRONOMIA1_ERROS",0)+1);
NewGUI=SOBA_get_question(1,"Astronomia");
PlaySom(snd_wrong,0,VSom,0);
