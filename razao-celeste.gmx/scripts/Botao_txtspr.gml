///Botao_txtspr( x1, y1, x2, y2, txt, spr, sub, spr scle, ct1, cs1, a1, ct2, cs2, a2, GUI )
var x1 = argument[0], y1 = argument[1], x2 = argument[2], y2 = argument[3];
var txt = argument[4], spr = argument[5], sub = argument[6], scle = argument[7];
var ct = argument[8], cs = argument[9], alpha = argument[10], alphai = draw_get_alpha();
var gui = argument[14];

var fs = string_height("|")*(txt!="");
if (sprite_get_width(spr)*scle > (x2-x1) || sprite_get_height(spr)*scle > (y2-y1-fs*2)) {
    scle = min((x2-x1)/sprite_get_width(spr),(y2-y1-fs*2)/sprite_get_height(spr));
    x1 = (x1+x2)/2-sprite_get_width(spr)*scle/2-fs;
    x2 = x1+sprite_get_width(spr)*scle+fs*2;
    y1 = (y1+y2)/2-sprite_get_height(spr)*scle/2-fs;
    y2 = y1+sprite_get_height(spr)*scle+fs*2;
}

for (var i=0; i<array_length_1d(MA); i++) {
    if (device_mouse_check_button_pressed(i,mb_left) && DeviceMouse_rect(x1,y1,x2,y2,i,gui)) MA[i] = "B["+string(x1)+","+string(y1)+","+string(x2)+","+string(y2)+"]";
    if (MA[i] = "B["+string(x1)+","+string(y1)+","+string(x2)+","+string(y2)+"]") {
        ct = argument[11];
        cs = argument[12];
        alpha = argument[13];
        if (!DeviceMouse_rect(x1,y1,x2,y2,i,gui)) MA[i] = "";
        if (!device_mouse_check_button(i,mb_left)) {
            MA[i] = "";
            return(1);
        }
    }
}

draw_set_alpha(alpha);
if (txt != "") {
    draw_set_colour(ct);
    draw_text((x1+x2)/2,y2-fs/2,txt);
    draw_roundrect_ext(x1,y2-fs,x2,y2,fs*2,fs*2,1);
    draw_set_colour(c_white);
}

draw_sprite_ext(spr,sub,(x1+x2)/2,(y1+y2)/2-fs,scle,scle,0,cs,alpha);
draw_set_alpha(alphai);

return(0);
