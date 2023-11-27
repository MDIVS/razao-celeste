///create_my_enemyes()
repeat(3) {
    var r = irandom(360);
    instance_create(lengthdir_x(2000,r),lengthdir_y(2000,r),obj_imp);
}

repeat(1) {
    var r = irandom(360);
    instance_create(lengthdir_x(5000,r),lengthdir_y(5000,r),obj_img);
}
