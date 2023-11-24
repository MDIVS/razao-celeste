///draw_merito( x, y )
var cback = draw_get_colour(), aback = draw_get_alpha();
draw_set_font(font_calibri10); draw_set_colour(c_orange);

var xx = round(argument0), yy = round(argument1);
var t = string(MERITO), tw = string_width(t);
var x1 = round(xx-tw/2-24), x2 = round(xx+tw/2+24);

draw_set_alpha(.5);
draw_rectangle_colour(x1,yy-8,x2,yy+8,0,0,0,0,0);
draw_set_alpha(aback);

draw_text(xx+12,yy,t);
scrspr_merito(xx-tw/2-12,yy,12,c_orange,1,1,MERITO);

draw_set_font(font_CourierNew); draw_set_colour(cback);
