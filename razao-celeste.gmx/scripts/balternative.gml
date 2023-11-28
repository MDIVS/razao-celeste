///balternative( x, y, txt, correct )
if argument3 {var c=cFine} else {var c=cLoss};
if bmiddlecenter_arial12bold(argument0,argument1,argument2,c) {
    if QNext exit;
    QNext=1;
    if argument3 {
        Acertos++;
        ini_write_real("OBA","ACERTOSFRENETICOS",ini_read_real("OBA","ACERTOSFRENETICOS",0)+1);
        PlaySom(snd_correct,0,VSom,0);
    } else {
        Erros++;
        ini_write_real("OBA","ERROSFRENETICOS",ini_read_real("OBA","ERROSFRENETICOS",0)+1);
        PlaySom(snd_wrong,0,VSom,0);
    }
};
