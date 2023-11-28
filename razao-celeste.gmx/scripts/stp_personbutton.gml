///stp_personbutton()
if iAct>=array_height_2d(bAct)||!is_string(bAct[iAct,0]) {bAct_alpha += -bAct_alpha/10; exit};
bAct_alpha += (1-bAct_alpha)/10;

if device_mouse_check_button_pressed(0,mb_left) {
    var h = string_height_ext(bAct[iAct,0],20,personchat_width(Chat)-32)+32;
    var x1=x+personchat_x1(Chat), y1=y+personchat_y2(Chat)+8, x2=x+personchat_x2(Chat), y2=y+personchat_y2(Chat)+8+h;
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);
    if point_in_rectangle(mx,my,x1,y1,x2,y2) {
        if is_string(bAct[iAct,1]) personchat_txt(Chat,bAct[iAct,1]);
        else if script_exists(bAct[iAct,1]) script_execute(bAct[iAct,1]);
        PlaySom(sound1,0,VSom,0);
        iAct++;
    }
}
