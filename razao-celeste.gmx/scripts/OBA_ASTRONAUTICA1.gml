///OBA_ASTRONAUTICA1
draw_set_alpha(image_alpha);
draw_text(DW/2,64,"Simulado de Astronáutica");
draw_set_font(arial8);
draw_set_valign(fa_top);
draw_text(DW/2,80,"ATENÇÃO: Não nos responsabilizamos em caso de paixões espontâneas pela ciência.#Não se preocupe se errar, errar faz parte. Vá com calma, uma questão de cada vez.");
draw_set_font(arialbold12);
draw_set_valign(fa_middle);

if BTech(MA,image_index,DW/2,DH/2,144-48*image_alpha,"Iniciar#Simulado",16743936){NewGUI=SOBA_get_question(1,"Astronáutica");PlaySom(sound1,0,VSom,0)};
