#define dra_pmg
///dra_pmg()
if Vida[0]>0Vida[0]=min(Vida[1],Vida[0]+Vida[2])else Vida[0]=0;
if Vida==0{instance_destroy();/*efeito de particulas*/;exit};

if VIEW_OBJECT!=id{
    draw_line_width_colour(x-sprite_width/2,y+sprite_height/2+5,x-sprite_width/2+sprite_width*(Vida[0]/Vida[1]),y+sprite_height/2+5,3,c_orange,c_orange);
    draw_line_width_colour(x-sprite_width/2,y+sprite_height/2+9,x-sprite_width/2+sprite_width*(Vida[0]/Vida[1]),y+sprite_height/2+9,2,c_aqua,c_aqua);
}

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,min(draw_get_alpha(),image_alpha));

scr_weaponsy(Weap);
//scr_portos(Port);
scr_propsy(Prop);

x+=lengthdir_x(Spd[0],direction);
y+=lengthdir_y(Spd[0],direction);
image_angle=direction;

#define gui_pmg
if VIEW_OBJECT==id{
    scr_Joystick(JOYS);if Joys_device(JOYS)!=-1{
        Spd[0]=min(Spd[0]+Spd[2],Spd[1]);
        var dd=angle_difference(Joys_direction(JOYS),direction);
        direction+=min(abs(dd),directionspeed)*sign(dd);
    }else{Spd[0]=max(0,Spd[0]-Spd[1])}
}else{Spd[0]=max(0,Spd[0]-Spd[1])}