///scr_planetgui()
if (!rectangle_in_circle(view_xview,view_yview,view_xview+view_wview,view_yview+view_hview,x,y,sy.DH/4)) {
    dra_planet(min(sy.DW-24,max(24,(x-view_xview)/view_wview*sy.DW)),min(sy.DH-24,max(24,(y-view_yview)/view_hview*sy.DH)),16,1,image_index/3,0,TEXTURA);
}
