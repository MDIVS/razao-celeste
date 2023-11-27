#define scr_creditos

#define scr_menu_creditos
///menu_creditos()
draw_set_alpha(Now[0]/30);

draw_set_font(algerian16);
draw_text_colour(DW/2,20,"RAZÃO CELESTE",2100224,2100224,c_aqua,c_aqua,Now[0]/30);
draw_text_colour(DW/2,40,"CRÉDITOS",2100224,2100224,c_aqua,c_aqua,Now[0]/30);
draw_set_font(arialbold12);

if BFase(MA,image_index,DW/5*3,DH/2,64,"Millionth#Vector",46271,spr_minifolha,46271){
    Now[1]=-3; Now[2]=scr_menu_millionthvector; PlaySom(sound1,0,VSom,0);
}

if BFase(MA,image_index,DW/5*2,DH/2,56,"Ivan#(Audio)",46271,spr_minifolha,46271){
    Now[1]=-1; Now[2]=scr_menu_ivan; PlaySom(sound1,0,VSom,0);
}

if BFase(MA,image_index,DW/5,DH/2,80,"Maicon#(Programador)",46271,spr_minifolha,46271){
    Now[1]=-1; Now[2]=scr_menu_maicon; PlaySom(sound1,0,VSom,0);
}

if BFase(MA,image_index,DW/5*4,DH/2,72,"Jorge#(Orientador)",46271,spr_minifolha,46271){
    Now[1]=-1; Now[2]=scr_menu_jorge; PlaySom(sound1,0,VSom,0);
}

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=scr_menu;PlaySom(sound2,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=3;Now[2]=0};
#define scr_menu_ivan
///scr_menu_ivan()
draw_set_alpha(Now[0]/30);

draw_set_valign(fa_top);
draw_set_font(algerian16);
draw_text_colour(DW/4,64,"IVAN DA SILVA SANTOS",2100224,2100224,c_aqua,c_aqua,Now[0]/30);
draw_text_colour(DW/4*3,64,"COZINHA MUSICAL PRODUÇÕES",2100224,2100224,c_aqua,c_aqua,Now[0]/30);

draw_set_font(arialbold12);
draw_text_ext_colour(DW/4,96,
"Ivan Santos produziu as músicas The World Space e Space Cross presentes neste jogo, tornando-o ainda mais único.

Atualmente, Ivan coordena o projeto Cozinha Muzical, descrito ao lado.",
16,DW/2-64,c_aqua,c_aqua,c_aqua,c_aqua,Now[0]/30);
draw_text_ext_colour(DW/4*3,96,
"A Cozinha Musical Produções é um projeto musical que atua com aulas de canto, teoria musical, violão, baixo, teclados, guitarra, flauta doce e transversal, curso de memorização voltado pra música e produção musical. Gravações de músicas, vinhetas e produções de artistas independentes, musicalização de poesias.

Além de propor o conhecimento e aperfeiçoamento, temos a finalidade de divulgar novos talentos e socializa-los, trazendo conhecimento, saúde mental e bem estar para os indivíduos.

O trabalho é feito em grupo ou individual, no próprio espaço, na residência do aluno ou em projetos, escolas e cursos de artes.

A Cozinha Musical tem como Diretor Musical o Músico e Prof. Ivan Santos, que atua também como músico em eventos em diversas parcerias.",
16,DW/2-64,c_aqua,c_aqua,c_aqua,c_aqua,Now[0]/30);
draw_set_valign(fa_middle);

if audio_is_playing(bmus_ivan_0) draw_line_width_colour(DW/4-80,DH-140,DW/4-80+160*(audio_sound_get_track_position(BMus)/audio_sound_length(BMus)),DH-140,40,16743936,16743936);
if audio_is_playing(bmus_ivan_1) draw_line_width_colour(DW/4-80,DH-80,DW/4-80+160*(audio_sound_get_track_position(BMus)/audio_sound_length(BMus)),DH-80,40,16743936,16743936);

if B1(MA,DW/4-80,DH-160,DW/4+80,DH-120,"The World Space",c_aqua) {
    if audio_is_playing(BMus) audio_stop_sound(BMus);
    BMus = audio_play_sound(bmus_ivan_0,0,0);
};
if B1(MA,DW/4-80,DH-100,DW/4+80,DH-60,"Space Cross",c_aqua) {
    if audio_is_playing(BMus) audio_stop_sound(BMus);
    BMus = audio_play_sound(bmus_ivan_1,0,0);
};

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=scr_menu;PlaySom(sound2,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=3;Now[2]=0;if audio_is_playing(BMus) audio_stop_sound(BMus);BMus=audio_play_sound(bmus_ivan_0,0,0);audio_sound_gain(BMus,VMus,1000)};