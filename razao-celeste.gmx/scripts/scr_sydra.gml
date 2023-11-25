draw_set_alpha(Now[0]/30);
var s = max(view_wview/1280,view_hview/1024);
draw_background_ext(bg_CRU,view_xview,view_yview,s,s,0,-1,image_alpha);

with(obj_planet) scr_planetdra();
with(obj_pbs01) if DRA!=-1script_execute(DRA);
with(obj_pee) dra_pee();
with(obj_pmg) dra_pmg();
//with(obj_ppeao) ia_peao();
//with(obj_ipeao) ia_peao();
with(obj_iss02) scr_iss02();
with(obj_disparo) script_execute(DRA);
