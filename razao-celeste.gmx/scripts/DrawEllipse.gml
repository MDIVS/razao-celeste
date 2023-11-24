///DrawEllipse_new(x1, y1, x2, y2, cor, precisao, width);
var _x1 = argument[0];
var _y1 = argument[1];
var _x2 = argument[2];
var _y2 = argument[3];
var _c = draw_get_colour();
if (argument_count > 4) _c = argument[4];
var _s = 8;
if (argument_count > 5) _s = argument[5];
var _w = 1;
if (argument_count > 6) _w = argument[6];

var _x = (_x1+_x2)/2;
var _y = (_y1+_y2)/2;
var _rx = (_x2-_x1)/2;
var _ry = (_y2-_y1)/2;
var _ts = 360/_s;

var i;
for(i=0; i<_s; i+=1) {
    draw_triangle_colour(_x+lengthdir_x(_rx,_ts*i-_ts/2),_y+lengthdir_y(_ry,_ts*i-_ts/2),_x+lengthdir_x(_rx,_ts*i+_ts/2),_y+lengthdir_y(_ry,_ts*i+_ts/2),_x+lengthdir_x(_rx-_w,_ts*i-_ts/2),_y+lengthdir_y(_ry-_w,_ts*i-_ts/2),_c,_c,_c,false);
    draw_triangle_colour(_x+lengthdir_x(_rx-_w,_ts*i-_ts/2),_y+lengthdir_y(_ry-_w,_ts*i-_ts/2),_x+lengthdir_x(_rx,_ts*i+_ts/2),_y+lengthdir_y(_ry,_ts*i+_ts/2),_x+lengthdir_x(_rx-_w,_ts*i+_ts/2),_y+lengthdir_y(_ry-_w,_ts*i+_ts/2),_c,_c,_c,false);
};
