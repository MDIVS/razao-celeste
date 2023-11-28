///dra_personchat( chat )
var oldcolor = draw_get_color();

//get chat system
var a = argument0;

//get chat x1, y1, x2 and y2
var a0=a[0];

//get chat width, height, border and round
var a1=a[1];

//get chat txt and count
var a2=a[2];

//get chat background, borders and text colour
var a3=a[3];

//draw background chat
draw_set_colour(a3[0]);
dra_rrect_ext(x+a0[0],y+a0[1],x+a0[2],y+a0[3],0,a1[3],12);

//draw border chat
draw_set_colour(a3[1]);
dra_rrect_width(x+a0[0],y+a0[1],x+a0[2],y+a0[3],a1[2],a1[3],12);

//draw chat txt
draw_set_colour(a3[2]);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext(x+a0[0]+a1[3],y+a0[1]+a1[3],string_copy(a2[0],0,a2[1]),20,a1[0]-a1[3]*2);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_colour(oldcolor);
