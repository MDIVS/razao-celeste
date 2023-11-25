#define scrs_planeta

#define scr_planetdra
///scr_planetdra()
if (DRA != -1) script_execute(DRA);
if (rectangle_in_circle(view_xview,view_yview,view_xview+view_wview,view_yview+view_hview,x,y,DH/3)) {
    dra_planet(x,y,24,1,image_index/3*(1-2*(object_index==obj_Venus)),0,TEXTURA);
}

#define scr_planetgui
///scr_planetgui()
if (!rectangle_in_circle(view_xview,view_yview,view_xview+view_wview,view_yview+view_hview,x,y,DH/4)) {
    dra_planet(min(DW-24,max(24,(x-view_xview)/view_wview*DW)),min(DH-24,max(24,(y-view_yview)/view_hview*DH)),16,1,image_index/3,0,TEXTURA);
}