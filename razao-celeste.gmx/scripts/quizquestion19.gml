var ic = instance_create(DW/5*1,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.Txt = "Júpiter";
ic = instance_create(DW/5*2,DH/2,obj_quiz_alternativa);
ic.Correta = 1;
ic.Txt = "Marte";
ic = instance_create(DW/5*3,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.Txt = "Vênus";
ic = instance_create(DW/5*4,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.Txt = "Saturno";
ic = instance_create(DW/2,DH/4,obj_quiz_confirmar);
ic.Txt = "Tem o maior vulcão inativo do Sistema Solar. É bem menor do que a Terra; é rochoso e tem superfície avermelhada. Tem desfiladeiros enormes. No passado até se pensou que era habitado. Provavelmente será o primeiro planeta a ser visitado por astronautas. Qual o nome deste planeta?";
