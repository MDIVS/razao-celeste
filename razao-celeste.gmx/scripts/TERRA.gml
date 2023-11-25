#define TERRA


#define dra_terra
if (rectangle_in_circle(view_xview,view_yview,view_xview+view_wview,view_yview+view_hview,0,0,128)) {
    dra_planet(0,0,128,1,image_index/5,23,background_get_texture(tx_terra));
}