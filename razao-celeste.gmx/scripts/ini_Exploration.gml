///ini_Exploration()
ini_open("Salvo.ini");
GUI=scr_sygui; DRA=scr_sydra;
Now[0]=0; Now[1]=3; Now[2]=0;

view_xview = -view_wview/2; view_yview = -view_hview/2;
instance_create(0,128,obj_pee);
instance_create(256,0,obj_pmg);
create_my_enemyes();
PlaySom(sound1,0,VSom,0);
draw_set_alpha(1);

if audio_is_playing(BMus)audio_stop_sound(BMus);
BMus=PlaySom(bmus_ivan_1,1,VMus,333);
ini_close();
