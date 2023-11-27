///DrawMapIco( spr, img, x, y, angle )
var a = draw_get_alpha();
var xx = min(DW-24,max(24,(argument2-view_xview)*(DW/view_wview)));
var yy = min(DH-24,max(24,(argument3-view_yview)*(DH/view_hview)));

DrawCircle(xx,yy,16,16743936,16743936,a,a,12,16);
DrawCircle(xx,yy,16,6303488,6303488,a,a,12,3);

draw_sprite_ext(argument0,argument1,xx,yy,1,1,argument4,draw_get_colour(),draw_get_alpha());
