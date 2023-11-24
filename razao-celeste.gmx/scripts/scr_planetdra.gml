///scr_planetdra()
if (DRA != -1) script_execute(DRA);
if (rectangle_in_circle(view_xview,view_yview,view_xview+view_wview,view_yview+view_hview,x,y,sy.DH/3)) {
    dra_planet(x,y,sy.DH/4,1,image_index/3,0,TEXTURA);
}
