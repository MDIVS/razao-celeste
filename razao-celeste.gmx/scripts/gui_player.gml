///gui_player()
if VIEW_OBJECT==id{
    scr_Joystick(JOYS);
    if Joys_distance(JOYS)>0{
        var dd=angle_difference(direction,Joys_direction(JOYS));
        direction-=min(abs(dd),directionspeed)*sign(dd);
        image_angle=direction;
        Spd[0]=min(Spd[0]+Spd[2],Spd[1]);
    }else{Spd[0]=max(0,Spd[0]-Spd[2])};
}else{Spd[0]=max(0,Spd[0]-Spd[2])};
