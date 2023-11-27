var ic = instance_create(DW/3*1,DH/2,obj_quiz_alternativa);
ic.Correta = 1;
ic.Txt = "Certo";
ic = instance_create(DW/3*2,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.Txt = "Errado";
ic = instance_create(DW/2,DH/4,obj_quiz_confirmar);
ic.Txt = "Em 2014 teremos no Brasil a Copa do Mundo de Futebol. Cada partida de futebol dura 90 minutos. Coincidentemente, a Estação Espacial Internacional (ISS), onde esteve o astronauta brasileiro Marcos Pontes, em 2006, também dá uma volta ao redor da Terra em aproximadamente 90 minutos.";
