///_pesq_orbita_complete_02()
Now[0]++;
PLANETA._AMAX = max(PLANETA._AMAX,point_distance(DW/2,DH/2,Now[1].x,Now[1].y));
PLANETA._AMIN = min(PLANETA._AMIN,point_distance(DW/2,DH/2,Now[1].x,Now[1].y));
PLANETA._AVAR = PLANETA._AMAX-PLANETA._AMIN;
draw_background_tiled(bg_pesq,0,0);
var alpha = image_index/15;
draw_set_alpha(alpha);

draw_set_halign(fa_left);
//draw star
DrawCircle(DW/2,DH/2,DH*.05,c_silver,c_silver,alpha,alpha,16,DH*.05);
DrawCircle(DW/2,DH/2,DH*.05,c_orange,c_orange,alpha,alpha,16,4);
draw_text(DW/2+DH*.06,DH/2,string_upper(PLANETA.Estrela));

//draw planet
DrawCircle(Now[1].x,Now[1].y,DH*.02,c_silver,c_silver,alpha,alpha,16,DH*.02);
DrawCircle(Now[1].x,Now[1].y,DH*.02,c_orange,c_orange,alpha,alpha,16,2);
draw_text(Now[1].x+DH*.03,Now[1].y,string_upper(PLANETA.Nome));
draw_set_font(font_CooperBlack); draw_set_halign(fa_right);
var t = abs(floor(PLANETA.PesqTrans[0]*Now[1].path_position));
draw_text_colour(Now[1].x-DH*.03,Now[1].y-12,t,c_aqua,c_aqua,c_aqua,c_aqua,alpha);
draw_set_font(font_CourierNew);
draw_text(Now[1].x-DH*.03,Now[1].y+12,"DIAS");
draw_set_halign(fa_center);

if (Now[3] == 0) {
    var t = "Toque para verificar o tempo que o planeta "+PLANETA.Nome+"#leva para completar uma volta em torno do sol.";
    draw_text(DW/2,DH*.8,t);
    dra_Toque(DW*.85,DH*.6,35,c_orange,c_yellow,Now[0]);
    if (device_mouse_check_button_pressed(0,mb_left)) {Now[1].path_speed = 5; Now[3] = 1};
} else if (Now[3] == 1) {
    if (Now[1].path_position == 1) {
        Now[3] = 2;
        addpopup_moedas(DW*.7,DH*.33,250);
    }
} else if (Now[3] == 2) {
    draw_text(DW/2,DH*.8,"É isso ai! "+PLANETA.Nome+" completa uma volta em torno do sol#EM INCRÍVEIS "+string(PLANETA.PesqTrans[0])+" DIAS TERRESTRES!");
    dra_Toque(DW*.85,DH*.6,35,c_orange,c_yellow,Now[0]);
    if (device_mouse_check_button_pressed(0,mb_left)) {
        image_index = 15;
        image_speed = -1;
    }
    if (image_speed == -1 && image_index <= 0) {
        GUI = _pesq_orbita_complete_03;
        Now[0]=0; Now[3]=0; Now[4]=0; Now[5]=DW;
        with(Now[1]) path_start(sy.Now[2],0,0,1);
        image_speed = 1;
    }
}

draw_set_alpha(1);
