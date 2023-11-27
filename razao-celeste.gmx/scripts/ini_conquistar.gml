#define ini_conquistar
///ini_conquistar
Now[0]=0; Now[1]=3; Now[2]=0;

view_wview = DW*2.5;
view_hview = DH*2.5;
view_xview = -view_wview/2; view_yview = -view_hview/2;
sy.BG_Full = bg_CRU;
sy.DrawStars = 1;
background_visible[1]=1;
background_visible[2]=1;
VIEW_OBJECT=instance_create(200,200,obj_pmg);
create_my_enemyes();
instance_create(DW-64,64,obj_pause);

if audio_is_playing(BMus)audio_stop_sound(BMus);
BMus=PlaySom(bmus_ivan_1,1,VMus,1000);

TIMER = 30*60*5;

#define end_conquistar
ini_open("Salvo.ini");
DRA=-1; GUI=fail_conquistar; Now[0]=3;
if instance_number(obj_nvinimigo)==2{
    GUI = bronze_conquistar;
    if ini_read_real("CONQUISTAS",string_upper(obj_planet.Nome),0)<1 ini_write_real("CONQUISTAS",string_upper(obj_planet.Nome),1);
} else if instance_number(obj_nvinimigo)==1{
    GUI = prata_conquistar;
    if ini_read_real("CONQUISTAS",string_upper(obj_planet.Nome),0)<2 ini_write_real("CONQUISTAS",string_upper(obj_planet.Nome),2);
} else if instance_number(obj_nvinimigo)==0{
    GUI = ouro_conquistar;
    if ini_read_real("CONQUISTAS",string_upper(obj_planet.Nome),0)<3 ini_write_real("CONQUISTAS",string_upper(obj_planet.Nome),3);
}

if GUI==fail_conquistar PlaySom(snd_GameOver,0,VSom,0) else PlaySom(snd_win,0,VSom,0);
sy.BG_Full = -1;
sy.DrawStars = 0;
background_visible[1] = 0;
background_visible[2] = 0;

VIEW_OBJECT=-1;
with(all){if !persistent instance_destroy()};
ini_close();
if audio_is_playing(BMus) audio_stop_sound(BMus);

#define fail_conquistar
draw_set_alpha(Now[0]/30);
draw_text(DW/2,40,"Você perdeu!");
draw_set_font(arial8);
draw_text(DW/2,64,"Mais sorte da próxima vez");
draw_set_font(arialbold12);

if Bspr(MA,spr_home,0,DW/2,DH/2){Now[1]=-3;Now[2]=scr_menu;BMus=PlaySom(bmus_ivan_0,1,VMus,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=3;Now[2]=0}

#define bronze_conquistar
draw_set_alpha(Now[0]/30);
draw_text(DW/2,40,"Você venceu!");
draw_set_font(arial8);
draw_text(DW/2,64,"Você derrotou boa parte das naves");

var dir = lengthdir_x(12,image_index);
draw_galho(spr_folha,0,
    DW/2+lengthdir_x(128,dir-77.5), DH/2+lengthdir_y(128,dir-77.5),
    DW/2+lengthdir_x(128,dir+22.5), DH/2+lengthdir_y(128,dir+22.5),
    DW/2+lengthdir_x(128,dir-22.5), DH/2+lengthdir_y(128,dir-22.5),
    12099,24704,14,7
);

dir = 180-dir;
draw_galho(spr_folha,0,
    DW/2+lengthdir_x(128,dir+77.5), DH/2+lengthdir_y(128,dir+77.5),
    DW/2+lengthdir_x(128,dir-22.5), DH/2+lengthdir_y(128,dir-22.5),
    DW/2+lengthdir_x(128,dir+22.5), DH/2+lengthdir_y(128,dir+22.5),
    12099,24704,14,7
);

draw_set_font(algerian16);
draw_text_colour(DW/2,DH/2,"BRONZE",24704,24704,12099,12099,Now[0]/30);

draw_set_font(arialbold12);
if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=scr_menu;if audio_is_playing(BMus) audio_stop_sound(BMus);BMus=PlaySom(bmus_ivan_0,1,VMus,0);PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}

#define prata_conquistar
draw_set_alpha(Now[0]/30);
draw_text(DW/2,40,"Você venceu!");
draw_set_font(arial8);
draw_text(DW/2,64,"Faltou apenas um inimigo para a Medalha de Ouro!");

var dir = lengthdir_x(12,image_index);
draw_galho(spr_folha,0,
    DW/2+lengthdir_x(128,dir-77.5), DH/2+lengthdir_y(128,dir-77.5),
    DW/2+lengthdir_x(128,dir+22.5), DH/2+lengthdir_y(128,dir+22.5),
    DW/2+lengthdir_x(128,dir-22.5), DH/2+lengthdir_y(128,dir-22.5),
    6381887,16776863,14,7
);

dir = 180-dir;
draw_galho(spr_folha,0,
    DW/2+lengthdir_x(128,dir+77.5), DH/2+lengthdir_y(128,dir+77.5),
    DW/2+lengthdir_x(128,dir-22.5), DH/2+lengthdir_y(128,dir-22.5),
    DW/2+lengthdir_x(128,dir+22.5), DH/2+lengthdir_y(128,dir+22.5),
    6381887,16776863,14,7
);

draw_set_font(algerian16);
draw_text_colour(DW/2,DH/2,"PRATA",16776863,16776863,6381887,6381887,Now[0]/30);

draw_set_font(arialbold12);
if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=scr_menu;if audio_is_playing(BMus) audio_stop_sound(BMus);BMus=PlaySom(bmus_ivan_0,1,VMus,0);PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}

#define ouro_conquistar
draw_set_alpha(Now[0]/30);
draw_text(DW/2,40,"Você venceu!");
draw_set_font(arial8);
draw_text(DW/2,64,"Você derrotou todos os seus rivais:#parabéns!");

var dir = lengthdir_x(12,image_index);
draw_galho(spr_folha,0,
    DW/2+lengthdir_x(128,dir-77.5), DH/2+lengthdir_y(128,dir-77.5),
    DW/2+lengthdir_x(128,dir+22.5), DH/2+lengthdir_y(128,dir+22.5),
    DW/2+lengthdir_x(128,dir-22.5), DH/2+lengthdir_y(128,dir-22.5),
    22879,46271,14,7
);

dir = 180-dir;
draw_galho(spr_folha,0,
    DW/2+lengthdir_x(128,dir+77.5), DH/2+lengthdir_y(128,dir+77.5),
    DW/2+lengthdir_x(128,dir-22.5), DH/2+lengthdir_y(128,dir-22.5),
    DW/2+lengthdir_x(128,dir+22.5), DH/2+lengthdir_y(128,dir+22.5),
    22879,46271,14,7
);

draw_set_font(algerian16);
draw_text_colour(DW/2,DH/2,"OURO",46271,46271,22879,22879,Now[0]/30);

draw_set_font(arialbold12);
if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=scr_menu;if audio_is_playing(BMus) audio_stop_sound(BMus);BMus=PlaySom(bmus_ivan_0,1,VMus,0);PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}