///OBA_ASTRONAUTICA1_CORRECT()
if NewGUI!=-1exit;
ini_write_real("OBA","ASTRONAUTICA1_ACERTOS",ini_read_real("OBA","ASTRONAUTICA1_ACERTOS",0)+1);
ini_write_real("OBA","Astrocoins",ini_read_real("OBA","Astrocoins",0)+1);
NewGUI=SOBA_get_question(1,"Astronáutica");
PlaySom(snd_correct,0,VSom,0);
