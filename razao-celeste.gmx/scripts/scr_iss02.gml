///scr_iss02()
draw_self();
if Vida[0]<=0 {instance_destroy();exit};
Vida[0] = min(Vida[1],Vida[0]+Vida[2]);

scr_weaponsy(Weap);
//scr_portos(Port);
scr_propsy(Prop);

var add = -1, alvo = -4;
alvo = get_pxinimigo(x,y,obj_nvplayer);
if (alvo != -4) {
    var dis = point_distance(x,y,alvo.x,alvo.y);
    var dir = point_direction(x,y,alvo.x,alvo.y);
    var dif = angle_difference(dir,direction);
    dif = angle_difference(dir+(45+45*dis<sprite_width*3)*sign(dif),direction);
    direction += min(abs(dif),.3)*sign(dif);
    add = 1;
}

Spd[0] = min(Spd[1],max(0,Spd[0]+add*Spd[2]));

image_alpha = min(1,image_alpha+1/room_speed);
image_angle = direction;
x += lengthdir_x(Spd[0],direction);
y += lengthdir_y(Spd[0],direction);
