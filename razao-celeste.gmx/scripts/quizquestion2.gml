var ic = instance_create(DW/5*1,DH/2,obj_quiz_alternativa);
ic.Correta = 1;
ic.sprite_index = spr_quizquestion2;
ic.image_speed = 0;
ic.image_index = 0;
ic = instance_create(DW/5*2,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.sprite_index = spr_quizquestion2;
ic.image_speed = 0;
ic.image_index = 1;
ic = instance_create(DW/5*3,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.sprite_index = spr_quizquestion2;
ic.image_speed = 0;
ic.image_index = 2;
ic = instance_create(DW/5*4,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.sprite_index = spr_quizquestion2;
ic.image_speed = 0;
ic.image_index = 3;
ic = instance_create(DW/2,DH/4,obj_quiz_confirmar);
ic.Txt = "O foguete que levou os primeiros astronautas para a Lua tinha 111 metros de altura (aproximadamente a altura de um prédio de 37 andares), era de 3 estágios e pesava quase 3 mil toneladas. Com sua enorme quantidade de energia, levou a espaçonave Apollo 11 à velocidade próxima dos 40 mil km/h. Qual das figuras ao lado representa o local aproximado onde ficaram os astronautas?";
