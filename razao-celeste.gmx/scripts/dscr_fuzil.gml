image_index++;
image_angle = direction;
image_alpha = 10-10*(image_index/200);

repeat(10) {
    x += lengthdir_x(1,direction);
    y += lengthdir_y(1,direction);
    
    var a = -4;
    for (var i=0; i<array_length_1d(Alvos); i++) a = instance_position(x,y,Alvos[i]);
    
    if (a != -4) {
        a.Vida[0]-=Dano;
        if (instance_exists(From)) a.Alvo = From;
        part_particles_create(DRAPARTSY,x,y,parts.explosion,5);
        instance_destroy();
        exit;
    }
}

draw_self();
if (image_index > 200) instance_destroy();
