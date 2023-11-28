///OBA2018n3q1_2
quiz_referenciar("OBA, 2018 | nível 3","http://www.oba.org.br/sisglob/sisglob_arquivos/2018/3%20PROVA%20NIVEL%203%20COM%20CARTA%20CIRCULAR.pdf");
var question = 
"Os planetas giram ao redor do seu eixo num movimento chamado de rotação.";

var qh = string_height(question);
var yy = 24+qh/2-96+DH/2;
var rr = (DH-48-192-32-qh-32)/3;

dra_planet(DW/2,yy,rr,1,image_index,0,background_get_texture(tx_null));

draw_set_valign(fa_top);
draw_text_ext(DW/2,48,question,20,DW*.8);
draw_set_valign(fa_middle);

balternative(DW/2,DH-192,"Errado",0);
balternative(DW/2,DH-128,"Certo",1);
