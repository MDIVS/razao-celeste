var yy=DH; if instance_exists(oAdMob) yy-=oAdMob.Banner_height;
var w1_x = DW/2;
var w1_y = yy/2-20;
var w1_r = (yy-440)/3;
var w1_orange = Erros/(Acertos+Erros)*360;

DrawCircle(w1_x,w1_y,w1_r,c_.myblue,c_.myblue,1,1,32,w1_r);
DrawCircle_ext(w1_x,w1_y,w1_r,-w1_orange/2,w1_orange/2,c_orange,c_orange,32,w1_r);

draw_set_font(algerian16);
draw_text(DW/2,100,"VOCÊ ACERTOU "+string(Acertos)+" DE "+string(Acertos+Erros)+" QUESTÕES!");
draw_set_font(algerian48);
var t = "PARABÉNS!";
if Acertos/(Acertos+Erros)<.7 t = "PRATIQUE MAIS";
draw_text(DW/2,150,t);
draw_set_font(arialbold12);

if bmiddlecenter_arial12bold(DW/2,yy-64,"Voltar ao menu",12632256) {
    instance_destroy();
    instance_create(0,0,io_menu);
    if yy!=DH {GoogleMobileAds_RemoveBanner(); oAdMob.Banner_height=0; oAdMob.Banner_width=0};
    PlaySom(sound1,0,VSom,0);
};

if bmiddlecenter_arial12bold(DW/2,yy-128,"JOGAR NOVAMENTE",16752192) {
    instance_destroy();
    instance_create(0,0,io_quizfrenetico);
    if yy!=DH {GoogleMobileAds_RemoveBanner(); oAdMob.Banner_height=0; oAdMob.Banner_width=0};
    PlaySom(sound1,0,VSom,0)
};

if !Dobrado&&instance_exists(oAdMob) {
    var t="DOBRAR RECOMPENSA", c=c_orange;
    if oAdMob.RewardedLoaded {t+="#(VIDEO 30s)"; c=c_lime} else t+="#(INDISPONÍVEL)";
    if bmiddlecenter_arial12bold(DW/2,yy-208,t,c) {
        if c==c_lime {GoogleMobileAds_ShowRewardedVideo(); Dobrado=1}
        else {
            GoogleMobileAds_LoadRewardedVideo(oAdMob.RewardedId);
            popup_create("Verifique a sua conexão e aguarde.");
        }
    }
}

if instance_exists(oAdMob)&&oAdMob.RewardedViewed {
    oAdMob.RewardedViewed = 0;
    var n = 1+2*(Acertos/(Acertos+Erros)>=.7);
    ini_write_real("OBA","Astrocoins",ini_read_real("OBA","Astrocoins",0)+n);
    popup_create(string(n),spr_astrocoin);
    PlaySom(sound4,0,VSom,0);
}
