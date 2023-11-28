///OBA2018n3q1_3
quiz_referenciar("OBA, 2018 | nível 3","http://www.oba.org.br/sisglob/sisglob_arquivos/2018/3%20PROVA%20NIVEL%203%20COM%20CARTA%20CIRCULAR.pdf");
var question = 
"Os planetas giram ao redor do Sol num movimento chamado de translação.";

var qh = string_height(question);
var yy = 24+qh/2-96+DH/2;
var rr = (DH-48-192-32-qh-32)/3;

        draw_orbita(DW/2,yy,1,rr,.1,rr*(1-.1),365,image_index);
draw_orbita_planets(DW/2,yy,1,rr,.1,rr*(1-.1),365,image_index,c_yellow,c_orange,c_blue,16743936);
  draw_orbita_names(DW/2,yy,1,rr,.1,rr*(1-.1),365,image_index,"Sol","Planeta");

draw_set_valign(fa_top);
draw_text_ext(DW/2,48,question,20,DW*.8);
draw_set_valign(fa_middle);

balternative(DW/2,DH-192,"Errado",0);
balternative(DW/2,DH-128,"Certo",1);
