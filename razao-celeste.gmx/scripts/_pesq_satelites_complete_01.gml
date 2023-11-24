///_pesq_satelites_complete_01()
Now[0]++;
draw_background_tiled(bg_pesq,0,0);
draw_set_alpha(image_index/30); draw_set_font(font_CooperBlack);
var t = string_copy("PESQUISA CONCLUÍDA!",1,19*(Now[0]/15));
draw_text_colour(DW/2,64,t,c_aqua,c_aqua,c_aqua,c_aqua,1);
draw_set_font(font_CourierNew);

var n = array_length_1d(PLANETA.Satelites);
var w = DW/n;
var xx = DW/n;

for (var i=1; i<n; i++) {
    var sat = PLANETA.Satelites[i];
    if (sat[0] != -1) {
        dra_model3d(sat[0],xx-sat[3],DH/2-sat[3],sat[3]*2,sat[3]*2,Now[0],Now[0],sat[1]);
    } else {
        dra_planet(xx,DH/2,sat[3],1,Now[0],Now[0],sat[1]);
    }
    draw_text(xx,DH/2,string_upper(sat[2]));
    xx+=w;
}

draw_text(DW/2,DH*.8,"Os principais satélites de "+PLANETA.Nome+" agora são#conhecidos pela ciência dos astros, graças a você!##Toque na tela para receber suas 200 moedas.");
dra_Toque(DW-80,DH*.6,35,c_orange,c_yellow,Now[0]);
draw_set_alpha(1);

if (device_mouse_check_button_pressed(0,mb_left) && image_speed == 1) {image_speed = -1; image_index = 30};
if (image_index <= 0 && image_speed == -1) {
    GUI = _pesq_satelites_complete_02;
    Now[0]=0;
    for (var i=1; i<n; i++) {
        Now[i]=instance_create(0,0,object0);
        Now[i].Path = _ini_path_orbital(0,(i-1)*-64);
        with(Now[i]) path_start(Path,5,1,1);
    }
    image_speed = 1;
    addpopup_moedas(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),200);
}
