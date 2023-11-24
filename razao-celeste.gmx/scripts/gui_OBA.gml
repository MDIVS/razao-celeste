///gui_OBA()
Now[0]++;
draw_background_tiled(bg_pesq,0,0);
draw_set_alpha(image_index/30);
draw_set_font(font_CooperBlack);
draw_text_colour(round(DW/2),round(DH*.33),"OBA",c_orange,c_orange,c_orange,c_orange,image_index/30);
draw_text_colour(round(DW/2),round(DH*.33)+20,"Olímpiada Brasileira de Astronomia",16742400,16742400,16742400,16742400,image_index/30);
draw_set_valign(fa_top);
draw_set_font(font_CourierNew);
var t = "A tripulação da estação espacial, após cada pesquisa, retira uma questão da OBA no site www.oba.org.br.##Eles querem testar o comandante, querem ter a certeza de que se encontram numa posição governamental confortável no que diz respeito ao comando da estação.##Se você responder a questão corretamente, a tripulação te presenteia com 100 moedas, se não, alguns podem se rebelar e abandonar a causa.##*Não somos parceiros ou filiados à OBA.";
draw_text_ext(round(DW/2),round(DH*.33)+64,t,13,DW*.66);
draw_set_valign(fa_middle);
dra_Toque(DW*.85,DH*.6,35,c_orange,c_yellow,Now[0]);
if (device_mouse_check_button_pressed(0,mb_left)) {
    image_index = 30;
    image_speed = -2;
}

if (image_index < 0) {
    image_index = 0;
    image_speed = 1;
    script_execute(Now[1]);
}
draw_set_alpha(1);
