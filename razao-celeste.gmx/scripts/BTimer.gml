///BTimer( x, y, t )
var m = string(floor(argument2/60));
var t = m+":"+string(argument2 mod 60);
var sprw = sprite_get_width(spr_timer);
var strw = string_width(t);
var w = sprw+8+strw;
draw_sprite(spr_timer,0,argument0-w/2+sprw/2,argument1);
draw_text(argument0+w/2-strw/2,argument1,t);
