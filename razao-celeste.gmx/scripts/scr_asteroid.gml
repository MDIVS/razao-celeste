///scr_asteroid()
draw_sprite_ext(spr_asteroid,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

if (sy.Title != "pausa") {
    var inst = instance_place(x,y,obj_disparo);
    if (inst != -4) {
        instance_destroy();
        with(inst) instance_destroy();
    }
    inst = instance_place(x,y,obj_nave);
    if (inst != -4) {
        inst.Vida[0]-=image_index;
        instance_destroy();
    }
    
    x += lengthdir_x(Spd,direction);
    y += lengthdir_y(Spd,direction);
    direction -= angle_difference(direction,point_direction(x,y,PLANETA.x,PLANETA.y))*min(.005,max(.00001,1-point_distance(x,y,PLANETA.x,PLANETA.y)/sy.DH));
    image_alpha = min(1,image_alpha+1/room_speed);
}
