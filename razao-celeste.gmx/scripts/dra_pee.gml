var dir = point_direction(x,y,0,0)+90;
var circ=(2*pi*192), step=circ/Spd[0];
x = lengthdir_x(192,360/step*image_index);
y = lengthdir_y(192,360/step*image_index);
image_index++;

if Vida[0]>0Vida[0]=min(Vida[1],Vida[0]+Vida[2])else Vida[0]=0;
if Vida==0{instance_destroy();/*efeito de particulas*/;exit};

if VIEW_OBJECT!=id{
    draw_line_width_colour(x-sprite_width/2,y+sprite_height/2+5,x-sprite_width/2+sprite_width*(Vida[0]/Vida[1]),y+sprite_height/2+5,3,c_orange,c_orange);
    draw_line_width_colour(x-sprite_width/2,y+sprite_height/2+9,x-sprite_width/2+sprite_width*(Vida[0]/Vida[1]),y+sprite_height/2+9,2,c_aqua,c_aqua);
} else {
    draw_set_colour(16743936);
    draw_primitive_begin(pr_linelist);
    for(var i=0;i<=360;i+=9)draw_vertex(lengthdir_x(192,i),lengthdir_y(192,i));
    draw_primitive_end();
    draw_set_colour(c_white);
}

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,min(draw_get_alpha(),image_alpha));
//scr_portos(Port);
scr_weaponsy(Weap);
