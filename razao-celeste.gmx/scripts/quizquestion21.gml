var ic = instance_create(DW/5*1,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.Txt = "Júpiter";
ic = instance_create(DW/5*2,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.Txt = "Marte";
ic = instance_create(DW/5*3,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.Txt = "Vênus";
ic = instance_create(DW/5*4,DH/2,obj_quiz_alternativa);
ic.Correta = 1;
ic.Txt = "Saturno";
ic = instance_create(DW/2,DH/4,obj_quiz_confirmar);
ic.Txt = "O mais distante planeta ainda visível a olho nu. Um pouco menor que Júpiter. Tem os mais lindos sistemas de anéis. Gasoso. Seu dia dura só 10,5 horas. Qual o nome deste planeta?";
