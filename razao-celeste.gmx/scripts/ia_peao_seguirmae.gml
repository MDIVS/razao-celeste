///ia_peao_seguirmae()
if (!instance_exists(Mae) || Mae == -4) {
    Mae = -4;
    ACT = ia_peao_solto;
    exit;
}

Alvo = get_pxinimigo(Mae.x,Mae.y,Inimigo);
if (Alvo != -4) ACT = ia_peao_atacar;

var pd = min(point_distance(x,y,Mae.x,Mae.y),180);
var dd = angle_difference(point_direction(x,y,Mae.x,Mae.y)+random_range(-180+pd,180-pd),direction);
direction += min(abs(dd),2)*sign(dd);
