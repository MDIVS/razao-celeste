///step_window()
var w = round(window_get_width()), h = round(window_get_height());
if (DW != w || DH != h) {
    DW=w; DH=h;
    ini_open("Salvo.ini");
    ini_write_real("Config","DH",DH);
    ini_close();
    surface_resize(application_surface,w,h);
    display_set_gui_size(w,h);
}
