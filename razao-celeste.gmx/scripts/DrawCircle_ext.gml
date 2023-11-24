///DrawCircle_ext(x, y, raio, ang1, ang2, ++ c1, c2, precisao, width);
var _x = argument[0];
var _y = argument[1];
var _r = argument[2];
var _a1 = argument[3];
var _a2 = argument[4];

var _c1 = draw_get_colour();
if (argument_count > 5) _c1 = argument[5];
var _c2 = draw_get_colour();
if (argument_count > 6) _c2 = argument[6];
var _s = 8;
if (argument_count > 7) _s = argument[7];
var _w = 1;
if (argument_count > 8) _w = argument[8];

var _ts = (_a2-_a1)/_s;
var i;

for(i=0; i<_s; i+=1) {
    draw_triangle_colour(_x+lengthdir_x(_r,_a1+_ts*i-_ts/2),_y+lengthdir_y(_r,_a1+_ts*i-_ts/2),_x+lengthdir_x(_r,_a1+_ts*i+_ts/2),_y+lengthdir_y(_r,_a1+_ts*i+_ts/2),_x+lengthdir_x(_r-_w,_a1+_ts*i-_ts/2),_y+lengthdir_y(_r-_w,_a1+_ts*i-_ts/2),_c2,_c2,_c1,false);
    draw_triangle_colour(_x+lengthdir_x(_r-_w,_a1+_ts*i-_ts/2),_y+lengthdir_y(_r-_w,_a1+_ts*i-_ts/2),_x+lengthdir_x(_r,_a1+_ts*i+_ts/2),_y+lengthdir_y(_r,_a1+_ts*i+_ts/2),_x+lengthdir_x(_r-_w,_a1+_ts*i+_ts/2),_y+lengthdir_y(_r-_w,_a1+_ts*i+_ts/2),_c1,_c2,_c1,false);
};
