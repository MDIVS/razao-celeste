var ic = instance_create(DW/3*1,DH/2,obj_quiz_alternativa);
ic.Correta = 1;
ic.Txt = "Certo";
ic = instance_create(DW/3*2,DH/2,obj_quiz_alternativa);
ic.Correta = 0;
ic.Txt = "Errado";
ic = instance_create(DW/2,DH/4,obj_quiz_confirmar);
ic.Txt = "O Instituto Nacional de Pesquisas Espaciais (INPE) é responsável pelo Projeto de Monitoramento do Desflorestamento na Amazônia Legal (PRODES).";
