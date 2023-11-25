#define ini_lixoespacial
///ini_lixoespacial
GUI=gui_lixoespacial; DRA=dra_lixoespacial;
Now[0]=0; Now[1]=3; Now[2]=0;
TIMER = 30*150;

view_xview = -view_wview/2; view_yview = -view_hview/2;
instance_create(0,128,obj_pee);
instance_create(256,0,obj_pmg);
repeat(10)instance_create(irandom_range(-1000,1000),irandom_range(-1000,1000),obj_spacegarbage);

if audio_is_playing(BMus)audio_stop_sound(BMus);
BMus=PlaySom(bmus_ivan_1,1,VMus,333);

#define dra_lixoespacial
draw_set_alpha(Now[0]/30);
dra_terra();
with(obj_pee) dra_pee();
with(obj_pmg) dra_pmg();
with(obj_spacegarbage) draw_self();

/*

with(obj_ppeao) ia_peao();
with(obj_ipeao) ia_peao();
with(obj_iss02) scr_iss02();
with(obj_disparo) script_execute(DRA);

*/

Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}

#define gui_lixoespacial
with(obj_pee) if GUI!=-1script_execute(GUI);
with(obj_pmg) gui_pmg();

if !rectangle_in_circle(view_xview,view_yview,view_xview+view_wview,view_yview+view_hview,0,0,128)dra_planet(min(DW-24,max(24,-view_xview)),min(DH-24,max(24,-view_yview)),16,1,image_index/5,23,background_get_texture(tx_terra));

var dis = 10000, dis2=0, i=-1;
with(obj_spacegarbage){dis2=point_distance(x,y,view_xview+view_wview/2,view_yview+view_hview/2);if dis2<dis{dis=dis2;i=id}}
if i!=-1&&!point_in_rectangle(i.x,i.y,view_xview,view_yview,view_xview+view_wview,view_yview+view_hview)draw_sprite_ext(i.sprite_index,i.image_index,min(DW-24,max(24,i.x-view_xview)),min(DH-24,max(24,i.y-view_yview)),.5,.5,i.image_angle,i.image_blend,Now[0]/30);

with(obj_pee){if GUI!=-1script_execute(GUI)}
with(obj_pbs01){if GUI!=-1script_execute(GUI)}

TIMER--;
BTimer(DW/2,32,ceil(TIMER/30));
scr_view();

if instance_number(obj_spacegarbage)==0{Now[1]=-3;Now[2]=towin_lixoespacial}
if TIMER<=0&&Now[1]>0{Now[1]=-3;Now[2]=tofail_lixoespacial}
if !instance_exists(obj_nvplayer) Title = "DERROTA";
if (Title == "VITÓRIA") {
    draw_set_alpha(.5);
    draw_rectangle_colour(32,32,DW-32,DH-32,0,0,0,0,0);
    draw_set_alpha(1);
    draw_set_font(font_CooperBlack);
    draw_text_colour(round(DW/2),96,"Vitória",c_orange,c_orange,c_orange,c_orange,1);
    draw_set_font(font_CourierNew);
    if (Botao_rect(round(DW/2)-96,DH-96,round(DW/2)+96,DH-64,16,"Retornar ao menu",-1,c_lime,1)) {
        with(all) {
            if (!persistent) instance_destroy();
        };
        DRA = -1;
        GUI = scr_menu;
        Title = "";
        Now[0] = 0; Now[1] = 1; Now[2] = 0; Now[3] = 0;
    }
}

draw_text(DW-128,32,string(10-instance_number(obj_spacegarbage))+"/10");

if Bspr(MA,spr_pause,0,DW-48,48){Now[1]=-3;Now[2]=gui_pause;Now[3]=scr_sydra;PlaySom(sound1,0,VSom,0)}
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{DRA=-1;GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}

#define tofail_lixoespacial
DRA=-1; GUI=fail_lixoespacial; Now[0]=3;
VIEW_OBJECT=-1;
with(obj_spacegarbage) instance_destroy();
with(obj_nave) instance_destroy();

#define towin_lixoespacial
ini_open("Salvo.ini");
DRA=-1; Now[0]=3;
GUI = win_lixoespacial;
VIEW_OBJECT=-1;
with(obj_spacegarbage) instance_destroy();
with(obj_nave) instance_destroy();
ini_close();

#define fail_lixoespacial
draw_set_alpha(Now[0]/30);
draw_text(DW/2,40,"Acabou o tempo!");
draw_set_font(arial8);
draw_text(DW/2,64,"Mais sorte da próxima vez");
draw_set_font(arialbold12);

if BTech(MA,image_index,DW/2,DH/2,96,"Tentar de#novo!",16743936){Now[1]=-3;Now[2]=ini_lixoespacial};

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=scr_menu;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}

#define win_lixoespacial
draw_set_alpha(Now[0]/30);
draw_text(DW/2,40,"Você venceu!");
draw_set_font(arial8);
draw_text(DW/2,64,"Você limpou a órbita do planeta Terra dentro do prazo");
draw_set_font(arialbold12);

if BTech(MA,image_index,DW/2,DH/2,96,"Tentar de#novo!",16743936){Now[1]=-3;Now[2]=ini_lixoespacial};

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=scr_menu;PlaySom(sound1,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}