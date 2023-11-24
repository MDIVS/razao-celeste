///create_my_enemyes()
repeat(3+irandom(2)) {
    var r = irandom(360);
    instance_create(lengthdir_x(850,r),lengthdir_y(850,r),obj_iss02);
}
