var ic = instance_create(DW/5*1,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.sprite_index = spr_quizsetax96;
ic.image_angle = 90;
ic = instance_create(DW/5*2,DH/2,obj_quiz_alternativa);
ic.Correta = 1;
ic.sprite_index = spr_quizsetax96;
ic.image_angle = 45;
ic = instance_create(DW/5*3,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.sprite_index = spr_quizsetax96;
ic.image_angle = 0;
ic = instance_create(DW/5*4,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.sprite_index = spr_quizsetax96;
ic.image_angle = 22.5;
ic = instance_create(DW/2,DH/4,obj_quiz_confirmar);
ic.Txt = "Suponha que você quer lançar um foguete (ou jogar uma pedra) para que ele vá o mais longe possível de onde você está. Qual das quatro figuras com diferentes direções iniciais de lançamentos fará o foguete ir mais longe?";
