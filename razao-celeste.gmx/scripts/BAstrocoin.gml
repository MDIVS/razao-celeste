///BAstrocoin( x, y, t )
var t = string(argument2);
var sprw = sprite_get_width(spr_astrocoin);
var strw = string_width(t);
var w = sprw+8+strw;
draw_sprite(spr_astrocoin,0,argument0-w/2+sprw/2,argument1);
draw_text(argument0+w/2-strw/2,argument1,t);
