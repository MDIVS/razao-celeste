var ic = instance_create(DW/5*1,DH/2,obj_quiz_alternativa);
ic.Correta = 1;
ic.Txt = "	Coifa";
ic = instance_create(DW/5*2,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.Txt = "	Aletas";
ic = instance_create(DW/5*3,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.Txt = "	Traseira";
ic = instance_create(DW/5*4,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.Txt = "	Motor";
ic = instance_create(DW/2,DH/4,obj_quiz_confirmar);
ic.Txt = "Para diminuir a resistência do ar durante o voo, uma das extremidades do foguete tem um formato pontiagudo, chamada:";
