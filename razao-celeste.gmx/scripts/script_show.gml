draw_clear_alpha(make_colour_rgb(0,32,96),0);
var a;
a[0] = background_get_texture(tx_mercurio);
a[1] = background_get_texture(tx_venus);
a[2] = background_get_texture(tx_terra);
a[3] = background_get_texture(tx_marte);
a[4] = background_get_texture(tx_jupiter);
a[5] = background_get_texture(tx_saturno);
a[6] = background_get_texture(tx_urano);
a[7] = background_get_texture(tx_netuno);

for (var i=0; i<array_length_1d(a); i++) {
    dra_planet(DW/2+lengthdir_x(DH/3,360/array_length_1d(a)*i),DH/2+lengthdir_y(DH/3,360/array_length_1d(a)*i),DH*.1,1,0,0,a[i]);
}

if (keyboard_check_pressed(vk_space)) {
    var file = get_save_filename("screenshot|*.png","");
    if (file != "") {
        screen_save(file);
    }
}

if (keyboard_check_pressed(vk_left)) {
    GUI = script0;
}

if (keyboard_check_pressed(vk_right)) {
    GUI = script_show2
}
