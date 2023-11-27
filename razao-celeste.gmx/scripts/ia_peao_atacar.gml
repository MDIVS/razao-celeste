///ia_peao_atacar();
if (!instance_exists(Alvo)) {
    Alvo = get_pxinimigo(x,y,Inimigo,500);
    if (Alvo == -4) {
        if (Mae == -4) {ACT = ia_peao_solto} else {ACT = ia_peao_seguirmae};
    }
    exit;
}

var add = 1;
var dd = angle_difference(point_direction(x,y,Alvo.x,Alvo.y),direction);
if (abs(dd) > 90) {
    if (point_distance(x,y,Alvo.x,Alvo.y) > 100) {
        add = 2;
        direction += min(abs(dd),2)*sign(dd);
    }
} else direction += min(abs(dd),2)*sign(dd);
if (collision_line(x,y,x+lengthdir_x(240,direction),y+lengthdir_y(240,direction),Alvo,1,1)) add = 2;
Speed = min(1,max(0,Speed+add/room_speed/2));
