///bplanetalternative( x, y, r, eixo, rot, tex, txt, correct )
if cFine!=cLoss {if argument7 draw_set_colour(cFine) else draw_set_colour(cLoss)};
if BPlanet(MA,argument0,argument1,argument2,argument3,argument4,argument5) {
    if QNext exit;
    QNext=1;
    if argument7 {
        Acertos++;
        ini_write_real("OBA","ACERTOSFRENETICOS",ini_read_real("OBA","ACERTOSFRENETICOS",0)+1);
        PlaySom(snd_correct,0,VSom,0);
    } else {
        Erros++;
        ini_write_real("OBA","ERROSFRENETICOS",ini_read_real("OBA","ERROSFRENETICOS",0)+1);
        PlaySom(snd_wrong,0,VSom,0);
    }
};
draw_text(argument0,argument1,argument6);
draw_set_colour(c_white);
