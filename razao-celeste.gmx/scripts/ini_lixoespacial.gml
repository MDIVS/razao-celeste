#define ini_lixoespacial
///ini_lixoespacial
GUI=gui_lixoespacial; DRA=dra_lixoespacial;
Now[0]=0; Now[1]=3; Now[2]=0;

view_wview = DW*2.5;
view_hview = DH*2.5;
view_xview = -view_wview/2; view_yview = -view_hview/2;
repeat(10)instance_create(irandom_range(-1000,1000),irandom_range(-1000,1000),obj_spacegarbage);
VIEW_OBJECT=instance_create(200,200,obj_pmg);

instance_create(0,0,obj_pause);

sy.BG_Full = bg_CRU;
sy.DrawStars = 1;

if audio_is_playing(BMus)audio_stop_sound(BMus);
BMus=PlaySom(bmus_ivan_1,1,VMus,1000);

TIMER = 30*150;

#define dra_lixoespacial
draw_set_alpha(Now[0]/30);
if rectangle_in_circle(view_xview,view_yview,view_xview+view_wview,view_yview+view_hview,0,0,128) dra_planet(0,0,128,1,image_index/5,23,background_get_texture(tx_terra));

//with(obj_spacegarbage) draw_self();

Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}

#define gui_lixoespacial
if !rectangle_in_circle(view_xview,view_yview,view_xview+view_wview,view_yview+view_hview,0,0,128)dra_planet(min(DW-24,max(24,-view_xview*(DW/view_wview))),min(DH-24,max(24,-view_yview*(DH/view_hview))),16,1,image_index/5,23,background_get_texture(tx_terra));

if VIEW_OBJECT!=-1 {
    var dis = 10000, dis2=0, i=-1;
    with(obj_spacegarbage){dis2=point_distance(x,y,view_xview+view_wview/2,view_yview+view_hview/2);if dis2<dis{dis=dis2;i=id}}
    if i!=-1{
        if !point_in_rectangle(i.x,i.y,view_xview+24,view_yview+24,view_xview+view_wview-24,view_yview+view_hview-24) {
            var xx = min(DW,max(0,(i.x-view_xview)*(DW/view_wview)));
            var yy = min(DH,max(0,(i.y-view_yview)*(DH/view_hview)));
            BPoliSpr(MA,spr_seta,0,1,point_direction(i.x,i.y,VIEW_OBJECT.x,VIEW_OBJECT.y),xx,yy,32+lengthdir_x(8,10*image_index),"",c_aqua)
        } else {
            var xx = (i.x-view_xview)*(DW/view_wview);
            var yy = (i.y-view_yview)*(DH/view_hview);
            BPoliSpr(MA,spr_seta,0,1,point_direction(i.x,i.y,VIEW_OBJECT.x,VIEW_OBJECT.y),xx,yy,32+lengthdir_x(8,10*image_index),"",16743936)
        }
    }
}

if Now[1]!=-3 TIMER--;
BTimer(DW/2,32,ceil(TIMER/30));
scr_view();

if instance_number(obj_spacegarbage)==0||(TIMER<=0&&Now[1]>0){Now[1]=-3;Now[2]=end_lixoespacial}

draw_text(DW-128,32,string(10-instance_number(obj_spacegarbage))+"/10");

with(obj_pause) gui_pause();

Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{DRA=-1;GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}

#define end_lixoespacial
ini_open("Salvo.ini");
DRA=-1; GUI=fail_lixoespacial; Now[0]=3;
VIEW_OBJECT=-1;
if audio_is_playing(BMus) audio_stop_sound(BMus);

if !instance_exists(obj_spacegarbage) {
    if TIMER/30<50{
        GUI = bronze_lixoespacial;
        if ini_read_real("CONQUISTAS","TERRA",0)<1 ini_write_real("CONQUISTAS","TERRA",1);
    } else if TIMER/30<70{
        GUI = prata_lixoespacial;
        if ini_read_real("CONQUISTAS","TERRA",0)<2 ini_write_real("CONQUISTAS","TERRA",2);
    } else {
        GUI = ouro_lixoespacial;
        if ini_read_real("CONQUISTAS","TERRA",0)<3 ini_write_real("CONQUISTAS","TERRA",3);
    }
}

with(all) {if !persistent instance_destroy()}

sy.BG_Full = -1;
sy.DrawStars = 0;

if GUI==fail_lixoespacial PlaySom(snd_GameOver,0,VSom,0) else PlaySom(snd_win,0,VSom,0);
ini_close();

#define fail_lixoespacial
draw_set_alpha(Now[0]/30);
draw_text(DW/2,40,"Acabou o tempo!");
draw_set_font(arial8);
draw_text(DW/2,64,"Mais sorte da próxima vez");
draw_set_font(arialbold12);

if Bspr(MA,spr_home,0,DW/2,DH/2){Now[1]=-3;Now[2]=scr_menu;PlaySom(sound1,0,VSom,0);if audio_is_playing(BMus) audio_stop_sound(BMus);BMus=PlaySom(bmus_ivan_0,1,VMus,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}

#define bronze_lixoespacial
draw_set_alpha(Now[0]/30);
draw_text(DW/2,40,"Você venceu!");
draw_set_font(arial8);
draw_text(DW/2,64,"Você limpou a órbita do planeta Terra dentro do prazo e conquistou a medalha de bronze:#deixe 50 segundos de sobra no relógio para atingir a medalha de prata!");

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
if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=scr_menu;if audio_is_playing(BMus) audio_stop_sound(BMus);BMus=PlaySom(bmus_ivan_0,1,VMus,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}

#define prata_lixoespacial
draw_set_alpha(Now[0]/30);
draw_text(DW/2,40,"Você venceu!");
draw_set_font(arial8);
draw_text(DW/2,64,"Você limpou a órbita do planeta Terra dentro do prazo e conquistou a medalha de prata:#deixe 70 segundos de sobra no relógio para atingir a medalha de ouro!");

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
if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=scr_menu;if audio_is_playing(BMus) audio_stop_sound(BMus);BMus=PlaySom(bmus_ivan_0,1,VMus,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}

#define ouro_lixoespacial
draw_set_alpha(Now[0]/30);
draw_text(DW/2,40,"Você venceu!");
draw_set_font(arial8);
draw_text(DW/2,64,"Você limpou a órbita do planeta Terra dentro do prazo e conquistou a medalha de ouro:#parabéns!");

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
if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=scr_menu;if audio_is_playing(BMus) audio_stop_sound(BMus);BMus=PlaySom(bmus_ivan_0,1,VMus,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}