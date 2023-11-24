///ia_peao_divergente()
DrawCircle(x,y,24*image_alpha,c_red,c_red,1-image_alpha,1-image_alpha,16,6*image_alpha);
image_alpha = max(0,image_alpha-1.33/room_speed);
draw_sprite_ext(spr_ipeao*(object_index==obj_ppeao)+spr_ppeao*(object_index==obj_ipeao),0,x,y,image_xscale,image_yscale,image_angle,image_blend,1-image_alpha);
if (image_alpha == 0) {
    var ic = instance_create(x,y,obj_ipeao*(object_index==obj_ppeao)+obj_ppeao*(object_index==obj_ipeao));
    ic.image_angle = image_angle;
    ic.direction = direction;
    ic.image_alpha = 1;
    instance_destroy();
};
