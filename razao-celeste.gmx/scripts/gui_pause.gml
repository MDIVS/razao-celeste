///PAUSE SCREEN
draw_set_alpha(Now[0]/30);
draw_text(DW/2,DH*.66,"Jogo pausado.");
if Bspr(MA,spr_home,0,DW*.33,DH/2)&&Now[1]>0{
    Now[1]=-3; Now[2]=scr_menu;
    with(all){if !persistent instance_destroy()}
    VIEW_OBJECT=-1;
    PlaySom(sound1,0,VSom,0);
};
if Bspr(MA,spr_play,0,DW*.66,DH/2)&&Now[1]>0{
    Now[1]=-3; Now[2]=scr_sygui;
    PlaySom(sound1,0,VSom,0);
};

Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{if Now[2]==scr_sygui DRA=Now[3];GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0;Now[3]=0}
