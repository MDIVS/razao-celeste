var s = max(DW/DH*1000/1280,1000/1024);
draw_background_ext(bg_CRU,view_xview+view_wview/2-640*s,view_yview+view_hview/2-512*s,s,s,0,-1,image_alpha);

with(obj_planet) scr_planetdra();
with(obj_asteroid) scr_asteroid();

with(Player) {if (DRA != -1) script_execute(DRA)};

with(obj_ppeao) ia_peao();
with(obj_ipeao) ia_peao();
with(obj_iss02) scr_iss02();
with(obj_disparo) script_execute(DRA);
