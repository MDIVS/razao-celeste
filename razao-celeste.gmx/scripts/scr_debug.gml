if (os_type == os_windows && FDbg && keyboard_check(vk_control) && keyboard_check_pressed(ord("P"))) {
    var file = get_save_filename("screenshot|*.png","");
    if (file != "") screen_save(file);
}

if (FDbg) {
    var t = "";
    if (Title != "") t += Title+"#";
    for (var i=0; i<array_length_1d(MA); i++) {if (MA[i] != "") t += "MA["+string(i)+"] "+MA[i]+"#"}
    
    t+=string(Now)+"#";
    if VMus>0 t+=audio_get_name(BMus)+" ("+string(audio_sound_get_track_position(BMus))+"/"+string(audio_sound_length(BMus))+"): "+string(audio_is_playing(BMus))+"#";
    with(all) t+=object_get_name(object_index)+"#";
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_font(arial8);
    draw_text(48,20,t);
    draw_set_font(arialbold12);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
};

if (os_type == os_windows && FDbg && keyboard_check(vk_control)) {
    if (keyboard_check_pressed(ord("V"))) Title = "VITÓRIA";
    if (keyboard_check_pressed(ord("B"))) Title = "DERROTA";
    if (device_mouse_check_button_pressed(0,mb_left)) {
        if (keyboard_check(vk_numpad1)) instance_create(mouse_x,mouse_y,obj_ipeao);
        if (keyboard_check(vk_numpad2)) instance_create(mouse_x,mouse_y,obj_iss02);
    }
    
    /* surface save code block
    if (keyboard_check_pressed(ord("P"))) {
        var file = get_save_filename("screenshot|*.png","");
        if (file != "") {
            var surf = surface_create(360,218);
            surface_set_target(surf);
            // draw anything
            surface_reset_target();
            surface_save(surf,file);
        }
    }
    */
    
    if (keyboard_check_pressed(ord("R"))) {show_debug_message("-> GAME RESTARTED"); game_restart()};
    if (keyboard_check_pressed(ord("D"))) {file_delete("Salvo.ini"); show_debug_message("-> GAME RESETED"); game_restart()}
};

if (keyboard_check_pressed(vk_insert)) {ini_open("Salvo.ini");ini_write_real("OBA","Astrocoins",999);ini_close()};
if keyboard_check_pressed(vk_f1)     show_debug_overlay(1);
if keyboard_check_pressed(vk_escape) game_end();
