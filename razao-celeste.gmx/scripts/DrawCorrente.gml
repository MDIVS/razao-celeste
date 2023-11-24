///DrawCorrente(x1,y1,x2,y2, width, spr, ++ sub-image, cor)
var _x1 = argument[0];
var _y1 = argument[1];
var _x2 = argument[2];
var _y2 = argument[3];
var _w = argument[4];
var _spr = argument[5];
var _subi = 0;
if (argument_count > 6) _subi = argument[6];
var _cor = c_white;
if (argument_count > 7) _cor = argument[7];
var _alpha = draw_get_alpha();
var _scale = _w/sprite_get_width(_spr);
var _sraio = sprite_get_width(_spr)*_scale/2;
var _distance = point_distance(_x1,_y1,_x2,_y2);
var _direction = point_direction(_x1,_y1,_x2,_y2);

var _correntes = point_distance(_x1,_y1,_x2,_y2)/_w;
var _i = 0;
repeat(_correntes) {
    draw_sprite_ext(_spr,_subi,_x2-lengthdir_x(_w*_i,_direction),_y2-lengthdir_y(_w*_i,_direction),_scale,_scale,_direction,_cor,_alpha);
    _i += 1;
}

if (_correntes-floor(_correntes) != 0) {
    var _dif = _correntes-floor(_correntes);
    draw_sprite_ext(_spr,_subi,_x1+lengthdir_x(_sraio,_direction)*_dif,_y1+lengthdir_y(_sraio,_direction)*_dif,_scale*_dif,_scale*_dif,_direction,_cor,_alpha);
};
