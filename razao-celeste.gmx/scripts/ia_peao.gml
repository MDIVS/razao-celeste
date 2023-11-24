///ia_peao()
Vida[0] = min(Vida[1],Vida[0]+Vida[2]);
if (Vida[0] <= 0) {instance_destroy(); exit};
script_execute(ACT);
image_alpha = min(1,image_alpha+1/room_speed);
image_angle = direction;
x += lengthdir_x(Speed,direction);
y += lengthdir_y(Speed,direction);

if ((Mae != -4 && VIEW_OBJECT == Mae) || VIEW_OBJECT == id) {
    DrawCircle(x,y,sprite_width,c_aqua,c_aqua,1,0,12,sprite_width);
}
draw_self();
ascr_fixfuzil(Arma);
