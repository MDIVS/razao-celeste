image_index++;
image_angle = direction;
image_alpha = 4-image_index/room_speed*2;

repeat(10) {
    x += lengthdir_x(1,direction);
    y += lengthdir_y(1,direction);
    
    var a = -4;
    for (var i=0; i<array_length_1d(Alvos); i++) a = instance_position(x,y,Alvos[i]);
    
    if (a != -4) {
        a.Vida[0]-=1;
        if (instance_exists(From)) a.Alvo = From;
        part_particles_create(DRAPARTSY,x,y,parts.explosion,5);
        instance_destroy();
        exit;
    }
}

draw_self();
if (image_index > room_speed*2) instance_destroy();
