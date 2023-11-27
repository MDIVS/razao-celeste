///dra_imgtxtsource( spr, img, x, y, txt, h );
var spr = argument0;
var img = argument1;
var xx = argument2;
var yy = argument3;
var txt = string(argument4);
var hh = argument5;

var txh = string_height(txt);
var sph = sprite_get_height(spr);
var txs = hh/3*2/txh;
var sps = hh/sph;
var txw = string_width(txt)*txs;
var spw = sprite_get_width(spr)*sps;

var ww = (txw+spw)*1.1;

draw_sprite_ext(spr,img,xx-ww/2+sprite_get_xoffset(spr)*sps,yy-hh/2+sprite_get_yoffset(spr)*sps,sps,sps,0,draw_get_colour(),draw_get_alpha());
draw_text_transformed(xx+ww/2-txw/2,yy,txt,txs,txs,0);
