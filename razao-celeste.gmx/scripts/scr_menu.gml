///scr_menu
ini_open("Salvo.ini");
draw_set_alpha(Now[0]/30);
var s = max(DW/1280,DH/1024);
draw_background_ext(bg_CRU,DW/2-640*s,DH/2-512*s,s,s,0,-1,Now[0]/30);
BAstrocoin(DW/2,32,ini_read_real("OBA","Astrocoins",0));

if B4(MA,DW/2,DH-128,48+48*Now[0]/30,"",16743936,2101248){Now[1]=-3;Now[2]=navescreen;PlaySom(sound1,0,VSom,0)};
draw_sprite_ext(spr_spaceship128,0,DW/2,DH-128,.5+.5*Now[0]/30,.5+.5*Now[0]/30,90,16743936,Now[0]/30);

if B4(MA,DW/2+200,DH-128,50+30*Now[0]/30,"Sistema#Solar",16743936,2101248)&&Now[1]>0{Now[1]=-3;Now[2]=scr_sistema_solar;PlaySom(sound1,0,VSom,0)};
if B4(MA,DW/2-200,DH-128,50+30*Now[0]/30,"Simulado#OBA",16743936,2101248)&&Now[1]>0{Now[1]=-3;Now[2]=OBA_selectalevel;PlaySom(sound1,0,VSom,0)};

//config
draw_sprite_ext(spr_engrenagem,0,DW-32,32,1,1,image_index*5,-1,draw_get_alpha());
if (device_mouse_check_button_pressed(0,mb_left) && point_in_circle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),DW-32,32,24) && Now[1]>0) {
    Now[1] = -3;
    Now[2] = scr_config;
    PlaySom(sound1,0,VSom,0);
}

Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=1;Now[2]=0}
ini_close();
