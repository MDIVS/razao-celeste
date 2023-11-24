///mi_001_act()
var r,x1,y1,x2,y2,d1,a;
repeat(ONDA[0]) {
    r = random(360);
    x1 = lengthdir_x(750,r);
    y1 = lengthdir_y(750,r);
    d1 = point_direction(x1,y1,PLANETA.x,PLANETA.y);
    r = choose(1,-1);
    x2 = PLANETA.x+lengthdir_x(DH,d1+90*r);
    y2 = PLANETA.y+lengthdir_y(DH,d1+90*r);
    a = instance_create(x1,y1,obj_asteroid);
    a.direction = point_direction(x1,y1,x2,y2);
}

repeat(ONDA[0]) {
    r = random(360);
    x1 = lengthdir_x(750,r);
    y1 = lengthdir_y(750,r);
    a = instance_create(x1,y1,obj_ipeao);
}



ONDA[2]=150*(ONDA[0]+1);
