image_index++;
image_angle = direction;
image_alpha = 3-image_index/room_speed*3;

repeat(30) {
    x += lengthdir_x(1,direction);
    y += lengthdir_y(1,direction);
    
    var faq, a = -4;
    for (var i=0; i<array_length_1d(Array); i++) {
        if (Array[i] > -1 && Array[i] < 4) {
            faq = Faccoes[Array[i]];
            for (var ii=0; ii<array_length_1d(faq); ii++) {
                a = instance_position(x,y,faq[ii]);
                if (a != -4) break;
            }
            if (a != -4) break;
        }
    }
    
    if (a != -4) {
        a.Vida[0]-=.2;
        instance_destroy();
        break;
    }
}

draw_self();
if (image_index > room_speed) instance_destroy();
