var ic = instance_create(DW/5*1,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.Txt = "	Chuva";
ic = instance_create(DW/5*2,DH/2,obj_quiz_alternativa);
ic.Correta = 1;
ic.Txt = "	Furacão";
ic = instance_create(DW/5*3,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.Txt = "	Neve";
ic = instance_create(DW/5*4,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.Txt = "	Neblina";
ic = instance_create(DW/2,DH/4,obj_quiz_confirmar);
ic.Txt = "Fenômeno natural formado por nuvens grandes e ventos fortes que giram em torno de um centro.";
