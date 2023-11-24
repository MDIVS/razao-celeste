///tutorial_01_escolha()
draw_clear(c_.darkblue);

var alpha = Now[0]/room_speed, c;

draw_set_alpha(alpha); draw_set_font(font_CooperBlack);
draw_text_colour(DW/2,100,"Selecione sua nave",c_aqua,c_aqua,c_aqua,c_aqua,alpha);
draw_set_font(font_CourierNew);

var y1 = DH*.3, y2 = DH*.85;

var x1 = DW*.25, x2 = DW*.45, s = (x2-x1)*.66/sprite_get_height(spr_pbs01);
c = make_colour_rgb(192*(Now[1]!=tutorial_01_pbs01),128+64*(Now[1]!=tutorial_01_pbs01),128+64*(Now[1]!=tutorial_01_pbs01));
draw_roundrect_colour_ext(x1,y1,x2,y2,24,48,make_colour_rgb(24,24,24),make_colour_rgb(24,24,24),0);
draw_roundrect_colour_ext(x1,y1,x2,y2,24,48,c,c,1);
draw_sprite_ext(spr_pbs01,0,(x1+x2)/2,(y1+y2)/2,s,s,90,-1,alpha);
if (point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),x1,y1,x2,y2) && device_mouse_check_button_pressed(0,mb_left)) Now[1] = tutorial_01_pbs01;

x1 = DW*.55; x2 = DW*.75;
c = make_colour_rgb(192*(Now[1]!=tutorial_01_pbs02),128+64*(Now[2]!=tutorial_01_pbs02),128+64*(Now[1]!=tutorial_01_pbs02));
draw_roundrect_colour_ext(x1,y1,x2,y2,24,48,make_colour_rgb(24,24,24),make_colour_rgb(24,24,24),0);
draw_roundrect_colour_ext(x1,y1,x2,y2,24,48,c,c,1);
draw_sprite_ext(spr_pbs02,0,(x1+x2)/2,(y1+y2)/2,s,s,90,-1,alpha);
if (point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),x1,y1,x2,y2) && device_mouse_check_button_pressed(0,mb_left)) Now[1] = tutorial_01_pbs02;

Now[0] = max(0,min(room_speed,Now[0]+1-2*(Now[1]!=-1)));
if (Now[1] != -1 && Now[0] == 0) {GUI = Now[1]; Now[1] = 0};
