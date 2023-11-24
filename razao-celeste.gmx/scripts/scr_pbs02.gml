if (ACT != -1) script_execute(ACT);
if (VIEW_OBJECT == id) {
    
}
if (Vida[0] > 0) {Vida[0] = min(Vida[1],Vida[0]+Vida[2])} else {Vida[0] = 0};

draw_self();
scr_propsy(Prop);
scr_portos(Port);
scr_weaponsy(Weap);

draw_line_width_colour(x-sprite_width/2,y+sprite_height/2+5,x-sprite_width/2+sprite_width*(Vida[0]/Vida[1]),y+sprite_height/2+5,3,c_orange,c_orange);
draw_line_width_colour(x-sprite_width/2,y+sprite_height/2+9,x-sprite_width/2+sprite_width*(Vida[0]/Vida[1]),y+sprite_height/2+9,2,c_aqua,c_aqua);

x += lengthdir_x(Spd[0],direction);
y += lengthdir_y(Spd[0],direction);
image_index++;
