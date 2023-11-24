///_cntr_weaponsdraw()
var ws = argument0;
var w = DW*.5;
var h = DH-160;
var s = min(w/sprite_get_width(Player.sprite_index),h/sprite_get_height(Player.sprite_index));

draw_sprite_ext(Player.sprite_index,0,DW/2,DH/2,s,s,0,c_gray,min(image_index/30,.5));
var spr, xx, yy, rr;
for (var i=0; i<array_length_1d(ws); i++) {
    var dba = ws[i], dis = dba[1]/Player.image_xscale*s, dir = dba[2];
    spr = weapon_get_sprite(dba[0]); xx = DW/2+lengthdir_x(dis,dir); yy = DH/2+lengthdir_y(dis,dir); rr = max(sprite_get_width(spr),sprite_get_height(spr))*s/2+8;
    
    if (device_mouse_check_button_pressed(0,mb_left) && point_in_circle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),xx,yy,rr)) {
        if (Now[1] == i) {Now[1]=-1} else {Now[1]=i};
        PlaySom(sound1,0,VSom,0);
    }
    
    draw_sprite_ext(spr,0,xx,yy,s,s,dba[3],-1,min(.33+.67*(Now[1] == -1 || Now[1] == i),image_index/30));
}
