var ic = instance_create(DW/3*1,DH/2,obj_quiz_alternativa);
ic.Correta = 1;
ic.Txt = "Certo";
ic = instance_create(DW/3*2,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.Txt = "Errado";
ic = instance_create(DW/2,DH/4,obj_quiz_confirmar);
ic.Txt = "A ISS chega a brilhar tal como Vênus. Você pode saber quando ela será visível a partir de onde você mora consultando o site www.heavens-above.com. Ela brilha porque reflete a luz do Sol.";
