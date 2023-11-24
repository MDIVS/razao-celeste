///_pesq_satelites_complete_sem_satelites()
Now[0]++;
draw_background_tiled(bg_pesq,0,0);
draw_set_alpha(image_index/30); draw_set_font(font_CooperBlack); draw_set_halign(fa_left);
var t = string_copy("PESQUISA CONCLUÍDA!",1,19*(Now[0]/15));
draw_text_colour(DW/2-string_width("PESQUISA CONCLUÍDA!")/2,64,t,c_aqua,c_aqua,c_aqua,c_aqua,1);
draw_set_font(font_CourierNew); draw_set_halign(fa_center);
dra_planet(DW/2,DH/2,DH/3,1,Now[0],0,PLANETA.TEXTURA);
draw_text(DW/2,DH*.8,PLANETA.Nome+" não possui luas. Mas não desanime: essa também é#uma importante descoberta para a astronomia!#- - toque na tela para voltar ao jogo - -");
draw_set_alpha(1);

if (device_mouse_check_button_pressed(0,mb_left) && image_speed == 1) {image_speed = -1; image_index = 30};
if (image_index <= 0 && image_speed == -1) {
    DRA = scr_sydra; GUI = scr_sygui;
    Now[0] = 0;
    image_speed = 1;
}
