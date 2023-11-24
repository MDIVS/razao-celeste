var surf = surface_create(background_get_width(bg_CRU),background_get_height(bg_CRU));
surface_set_target(surf);
draw_clear(make_colour_rgb(0,32,96));
draw_set_blend_mode_ext(bm_src_alpha, bm_one);
draw_background(bg_CRU,0,0);
draw_set_blend_mode(bm_normal);
surface_reset_target();
draw_surface_ext(surf,0,0,DW/background_get_width(bg_CRU),DH/background_get_height(bg_CRU),0,-1,1);

if (keyboard_check_pressed(vk_space)) {
    var file = get_save_filename("screenshot|*.png","");
    if (file != "") {
        surface_save(surf,file);
    }
}

if (keyboard_check_pressed(vk_left)) {
    GUI = script_show;
}

if (keyboard_check_pressed(vk_right)) {
    GUI = script_show3;
}

surface_free(surf);
