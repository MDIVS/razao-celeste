#define scr_intro
var a = 2100224, b = 12607232;
draw_set_alpha(Now[0]/30);

draw_sprite(LOGO9EJC,0,DW*.33,DH/2);
draw_sprite(LOGOFEBRACE17,0,DW*.66,DH/2);

var i,press = 0;
if keyboard_check(vk_anykey)press = 1;
for (i=0;i<array_length_1d(MA);i++) {if device_mouse_check_button_pressed(i,mb_left) press=1}
if press{Now[1]=-3; Now[0]=min(Now[0],30);PlaySom(sound0,0,VSom,0)}
if Now[0]>=90{Now[0]=30;Now[1]=-3}

Now[0]+=Now[1];if Now[0]<0{Now[0]=0;Now[1]=3;GUI=scr_intro2};

#define scr_intro2
part_particles_create(GUIPARTSY,DW/2,DH/2,parts.starsbackground,1);
draw_set_font(algerian48);
var t = "RAZÃO CELESTE";
var w = string_width(t);
var h = string_height(t);
draw_text_colour(DW/2,DH/2-24,t,c_aqua,c_aqua,2100224,2100224,(Now[0]-15)/30);

draw_set_font(arialbold12);
draw_text_colour(DW/2,DH/2+24,"Um jogo sobre Astronomia",11842048,11842048,11842048,11842048,(Now[0]-30)/30);
draw_text_colour(DW/2,DH-24,"Toque na tela",c_silver,c_silver,c_silver,c_silver,(Now[0]-60)/30);
draw_set_alpha(1);

var press = 0;
if (keyboard_check(vk_anykey)) press = 1;
for (var i=0; i<array_length_1d(MA); i++) {
    if (device_mouse_check_button_pressed(i,mb_left)) press = 1;
}
if press {
    Now[1]=-3; Now[0]=min(Now[0],90);
    PlaySom(sound0,0,VSom,0);
}

Now[0]+=Now[1];if Now[0]<0{Now[0]=0;Now[1]=3;GUI=scr_menu};