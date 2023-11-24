if (os_type == os_windows && FDbg && keyboard_check(vk_control) && keyboard_check_pressed(ord("P"))) {
    if (show_question("NO to normal print#YES to obj_peao print")) {
        var x1 = 9999, x2 = -9999, y1 = 9999, y2 = -9999;
        with(obj_ppeao) {x1 = min(x1,x); x2 = max(x2,x); y1 = min(y1,y); y2 = max(y2,y)};
        with(obj_ipeao) {x1 = min(x1,x); x2 = max(x2,x); y1 = min(y1,y); y2 = max(y2,y)};
        x1 -= 32;
        y1 -= 32;
        x2 += 32;
        y2 += 32;
        var surf = surface_create(x2-x1,y2-y1);
        surface_set_target(surf);
        draw_clear_alpha(0,0);
        with(obj_ppeao) {draw_sprite_ext(sprite_index,image_index,x-x1,y-y1,1,1,image_angle,image_blend,image_alpha)};
        with(obj_ipeao) {draw_sprite_ext(sprite_index,image_index,x-x1,y-y1,1,1,image_angle,image_blend,image_alpha)};
        with(obj_disparo) {draw_sprite_ext(sprite_index,image_index,x-x1,y-y1,1,1,image_angle,image_blend,image_alpha)};
        surface_reset_target();
        var file = get_save_filename("screenshot|*.png","");
        if (file != "") {
            surface_save(surf,file);
        }
        surface_free(surf);
    } else {
        var file = get_save_filename("screenshot|*.png","");
        if (file != "") {
            screen_save(file);
        }
    }
}
if (keyboard_check_pressed(vk_escape)) game_end();

if (FDbg) {
    var t = "";
    if (Title != "") t += Title+"#";
    for (var i=0; i<array_length_1d(MA); i++) {
        if (MA[i] != "") t += "MA["+string(i)+"] "+MA[i]+"#";
    }
    
    for (var i=0; i<array_length_1d(Now); i++) {
        if ((is_real(Now[i]) && Now[i] != 0) || (is_string(Now[i]) && Now[i] != "") || is_array(Now[i])) t += "NOW["+string(i)+"] "+string(Now[i])+"#";
    }
    
    draw_set_halign(fa_left);
    draw_text(48,20+string_height(t)/2,t);
    draw_set_halign(fa_center);
};

if (os_type == os_windows && FDbg && keyboard_check(vk_control)) {
    if (keyboard_check_pressed(ord("V"))) Title = "VITÓRIA";
    if (device_mouse_check_button_pressed(0,mb_left)) {
        if (keyboard_check(vk_numpad1)) instance_create(mouse_x,mouse_y,obj_ipeao);
        if (keyboard_check(vk_numpad2)) instance_create(mouse_x,mouse_y,obj_iss02);
    }

    if (keyboard_check_pressed(ord("R"))) {
        show_debug_message("-> GAME RESTARTED");
        game_restart();
    }
    
    if (keyboard_check_pressed(ord("D"))) {
        file_delete("Salvo.ini");
        show_debug_message("-> GAME RESETED");
        game_restart();
    }
    
    if (keyboard_check_pressed(vk_f1)) show_debug_overlay(1);
    if (keyboard_check_pressed(vk_f2)) show_debug_overlay(0);
    if (keyboard_check(vk_shift)) {
        PESQ[1] = PESQ[2];
    }
};
