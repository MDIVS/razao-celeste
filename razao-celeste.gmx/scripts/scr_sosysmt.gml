#define scr_sosysmt
if SMT[3]==1 {
    var r1 = round(submenu_w(SMT)/2-submenu_borderw(SMT));
    var r2 = r1*.74;
    var px = round(submenu_x(SMT)+submenu_w(SMT)/2);
    var py = round(submenu_y(SMT))+r1*1.5;
    
    if Foco==2&&BTech(px,py,r1,"",c_.myblue,24,image_index) {To=scr_to; instance_create(0,0,obj_Mercurio); SMT[3]=0};
    if Foco==3&&BTech(px,py+r1*2,r1,"",c_.myblue,24,image_index) {To=scr_to; instance_create(0,0,obj_Venus); SMT[3]=0};
    if Foco==4&&BTech(px,py+r1*4,r1,"",c_.myblue,24,image_index) {To=scr_to; instance_create(0,0,obj_Terra); SMT[3]=0};
    if Foco==5&&BTech(px,py+r1*6,r1,"",c_.myblue,24,image_index) {To=scr_to; instance_create(0,0,obj_Marte); SMT[3]=0};
    
    dra_planet(px,py,r2,1,image_index,0,soi_mercurio.Textura);
    dra_planet(px,py+r1*2,r2,1,image_index,177,soi_venus.Textura);
    dra_planet(px,py+r1*4,r2,1,image_index,23,soi_terra.Textura);
    dra_planet(px,py+r1*6,r2,1,image_index,25,soi_marte.Textura);
    
    if Foco==2 {
        draw_set_colour(c_silver);
        dra_rtrian_glow(px,py,r2*.6,lengthdir_x(12,image_index*10),r2*.2,r2*.4,6);
        draw_set_colour(c_.myblue2);
        dra_rtrian_ext(px,py,r2*.4,lengthdir_x(12,image_index*10),0,r2*.2,6);
    } else if Foco==3 {
        draw_set_colour(c_silver);
        dra_rtrian_glow(px,py+r1*2,r2*.6,lengthdir_x(12,image_index*10),r2*.2,r2*.4,6);
        draw_set_colour(c_.myblue2);
        dra_rtrian_ext(px,py+r1*2,r2*.4,lengthdir_x(12,image_index*10),0,r2*.2,6);
    } else if Foco==4 {
        draw_set_colour(c_silver);
        dra_rtrian_glow(px,py+r1*4,r2*.6,lengthdir_x(12,image_index*10),r2*.2,r2*.4,6);
        draw_set_colour(c_.myblue2);
        dra_rtrian_ext(px,py+r1*4,r2*.4,lengthdir_x(12,image_index*10),0,r2*.2,6);
    } else if Foco==5 {
        draw_set_colour(c_silver);
        dra_rtrian_glow(px,py+r1*6,r2*.6,lengthdir_x(12,image_index*10),r2*.2,r2*.4,6);
        draw_set_colour(c_.myblue2);
        dra_rtrian_ext(px,py+r1*6,r2*.4,lengthdir_x(12,image_index*10),0,r2*.2,6);
    }
    draw_set_colour(c_white);
    
    if device_mouse_check_button_pressed(0,mb_left)||os_type==os_windows {
        var mx = device_mouse_x_to_gui(0);
        var my = device_mouse_y_to_gui(0);
        if Foco!=2&&point_in_circle(mx,my,px,py,r1) {
            Foco=2;
            PlaySom(sound1,0,VSom,0);
        } else if Foco!=3&&point_in_circle(mx,my,px,py+r1*2,r1) {
            Foco=3;
            PlaySom(sound1,0,VSom,0);
        } else if Foco!=4&&point_in_circle(mx,my,px,py+r1*4,r1) {
            Foco=4;
            PlaySom(sound1,0,VSom,0);
        } else if Foco!=5&&point_in_circle(mx,my,px,py+r1*6,r1) {
            Foco=5;
            PlaySom(sound1,0,VSom,0);
        }
    }
    
    if Foco!=1&&Foco!=2&&Foco!=3&&Foco!=4&&Foco!=5 Foco=1;
} else {
    Foco=-1;
}

#define scr_sosysmg
if SMG[3]==1 {
    var r1 = round(submenu_w(SMG)/2-submenu_borderw(SMG));
    var r2 = r1*.74;
    var px = round(submenu_x(SMG)+submenu_w(SMG)/2);
    var py = round(submenu_y(SMG))+r1*1.5;
    
    if Foco==7&&BTech(px,py,r1,"",c_.myblue,24,image_index) {To=scr_to; instance_create(0,0,obj_Jupiter); SMG[3]=0};
    if Foco==8&&BTech(px,py+r1*2,r1,"",c_.myblue,24,image_index) {To=scr_to; instance_create(0,0,obj_Saturno); SMG[3]=0};
    if Foco==9&&BTech(px,py+r1*4,r1,"",c_.myblue,24,image_index) {To=scr_to; instance_create(0,0,obj_Urano); SMG[3]=0};
    if Foco==10&&BTech(px,py+r1*6,r1,"",c_.myblue,24,image_index) {To=scr_to; instance_create(0,0,obj_Netuno); SMG[3]=0};
    
    dra_planet(px,py,r2,1,image_index,3,soi_jupiter.Textura);
    dra_planet(px,py+r1*2,r2,1,image_index,27,soi_saturno.Textura);
    dra_planet(px,py+r1*4,r2,1,image_index,98,soi_urano.Textura);
    dra_planet(px,py+r1*6,r2,1,image_index,28,soi_netuno.Textura);
    
    if Foco==7 {
        draw_set_colour(c_silver);
        dra_rtrian_glow(px,py,r2*.6,lengthdir_x(12,image_index*10),r2*.2,r2*.4,6);
        draw_set_colour(c_.myblue2);
        dra_rtrian_ext(px,py,r2*.4,lengthdir_x(12,image_index*10),0,r2*.2,6);
    } else if Foco==8 {
        draw_set_colour(c_silver);
        dra_rtrian_glow(px,py+r1*2,r2*.6,lengthdir_x(12,image_index*10),r2*.2,r2*.4,6);
        draw_set_colour(c_.myblue2);
        dra_rtrian_ext(px,py+r1*2,r2*.4,lengthdir_x(12,image_index*10),0,r2*.2,6);
    } else if Foco==9 {
        draw_set_colour(c_silver);
        dra_rtrian_glow(px,py+r1*4,r2*.6,lengthdir_x(12,image_index*10),r2*.2,r2*.4,6);
        draw_set_colour(c_.myblue2);
        dra_rtrian_ext(px,py+r1*4,r2*.4,lengthdir_x(12,image_index*10),0,r2*.2,6);
    } else if Foco==10 {
        draw_set_colour(c_silver);
        dra_rtrian_glow(px,py+r1*6,r2*.6,lengthdir_x(12,image_index*10),r2*.2,r2*.4,6);
        draw_set_colour(c_.myblue2);
        dra_rtrian_ext(px,py+r1*6,r2*.4,lengthdir_x(12,image_index*10),0,r2*.2,6);
    }
    draw_set_colour(c_white);
    
    if device_mouse_check_button_pressed(0,mb_left)||os_type==os_windows {
        var mx = device_mouse_x_to_gui(0);
        var my = device_mouse_y_to_gui(0);
        if Foco!=7&&point_in_circle(mx,my,px,py,r1) {
            Foco=7;
            PlaySom(sound1,0,VSom,0);
        } else if Foco!=8&&point_in_circle(mx,my,px,py+r1*2,r1) {
            Foco=8;
            PlaySom(sound1,0,VSom,0);
        } else if Foco!=9&&point_in_circle(mx,my,px,py+r1*4,r1) {
            Foco=9;
            PlaySom(sound1,0,VSom,0);
        } else if Foco!=10&&point_in_circle(mx,my,px,py+r1*6,r1) {
            Foco=10;
            PlaySom(sound1,0,VSom,0);
        }
    }
    
    if Foco!=6&&Foco!=7&&Foco!=8&&Foco!=9&&Foco!=10 Foco=6;
} else Foco=-1;