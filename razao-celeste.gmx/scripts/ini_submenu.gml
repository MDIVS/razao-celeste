#define ini_submenu
///ini_submenu( x, y )
var a;

//state
var b=0;
b[0] = argument0; //x
b[1] = argument1; //y
b[2] = 0; //w
b[3] = 0; //h
b[4] = 0; //border radian
b[5] = 0; //border width
b[6] = -1; //window script
a[0] = b;

//positions of the button mode
var b=0;
b[0] = 0; //x
b[1] = 0; //y
b[2] = 0; //w
b[3] = 0; //h
b[4] = 0; //border radian
b[5] = 0; //button txt
b[6] = 0; //colour
a[1] = b;

//positions of the window mode
var b=0;
b[0] = 0; //x
b[1] = 0; //y
b[2] = 0; //w
b[3] = 0; //h
b[4] = 0; //border radian
b[5] = 0; //window title
b[6] = 0; //colour
a[2] = b;

a[3] = 0; //0 for button, 1 for window

return(a);

#define dra_submenu
///dra_submenu( submenu )
var a=argument0;
var a0 = a[0];
var a1 = a[1];
var a2 = a[2];

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var pc = point_in_rectangle(mx,my,a0[0],a0[1],a0[0]+a0[2],a0[1]+a0[3]);

var oldc = draw_get_colour();
var c = a1[6]*(!a[3])+a2[6]*a[3];
draw_set_colour(merge_colour(0,c,.2));
dra_rrect_ext(a0[0],a0[1],a0[0]+a0[2],a0[1]+a0[3],0,a0[4],24);
draw_set_colour(c);
dra_rrect_width(a0[0],a0[1],a0[0]+a0[2],a0[1]+a0[3],a0[5],a0[4],24);

if a[3] {
    draw_set_colour(oldc);
    a0[@4] += (a2[4]-a0[4])/10;
    if !pc&&(os_type==os_windows||device_mouse_check_button_pressed(0,mb_left)) {
        a[@3]=0;
        a0[@0]=a1[0];
        a0[@1]=a1[1];
        a0[@2]=a1[2];
        a0[@3]=a1[3];
        PlaySom(sound1,0,VSom,0);
    }
    if a0[6]!=-1 script_execute(a0[6]);
} else {
    draw_text(a0[0]+a0[2]/2,a0[1]+a0[3]/2,a1[5]);
    draw_set_colour(oldc);
    a0[@0] += (a1[0]-a0[0])/10;
    a0[@1] += (a1[1]-a0[1])/10;
    a0[@2] += (a1[2]-a0[2])/10;
    a0[@3] += (a1[3]-a0[3])/10;
    a0[@4] += (a1[4]-a0[4])/10;
    
    if pc&&(os_type==os_windows||device_mouse_check_button_pressed(0,mb_left)) {
        a[@3]=1;
        a0[@0]=a2[0];
        a0[@1]=a2[1];
        a0[@2]=a2[2];
        a0[@3]=a2[3];
        PlaySom(sound1,0,VSom,0);
    }
}

#define submenu_bx
///submenu_bx( submenu, bx )
var a=argument[0]; a=a[1];
if argument_count>1 a[@0]=argument[1];
return(a[0]);

#define submenu_by
///submenu_by( submenu, by )
var a=argument[0]; a=a[1];
if argument_count>1 a[@1]=argument[1];
return(a[1]);

#define submenu_bw
///submenu_bw( submenu, bw )
var a=argument[0]; a=a[1];
if argument_count>1 a[@2]=argument[1];
return(a[2]);

#define submenu_bh
///submenu_bh( submenu, bh )
var a=argument[0]; a=a[1];
if argument_count>1 a[@3]=argument[1];
return(a[3]);

#define submenu_br
///submenu_br( submenu, br )
var a=argument[0]; a=a[1];
if argument_count>1 a[@4]=argument[1];
return(a[4]);

#define submenu_bt
///submenu_bt( submenu, bt )
var a=argument[0]; a=a[1];
if argument_count>1 a[@5]=argument[1];
return(a[5]);

#define submenu_bc
///submenu_bc( submenu, bc )
var a=argument[0]; a=a[1];
if argument_count>1 a[@6]=argument[1];
return(a[6]);

#define submenu_borderw
///submenu_borderw( submenu, bw )
var a=argument[0]; a=a[0];
if argument_count>1 a[@5]=argument[1];
return(a[5]);

#define submenu_wx
///submenu_wx( submenu, wx )
var a=argument[0]; a=a[2];
if argument_count>1 a[@0]=argument[1];
return(a[0]);

#define submenu_wy
///submenu_wy( submenu, wy )
var a=argument[0]; a=a[2];
if argument_count>1 a[@1]=argument[1];
return(a[1]);

#define submenu_ww
///submenu_ww( submenu, ww )
var a=argument[0]; a=a[2];
if argument_count>1 a[@2]=argument[1];
return(a[2]);

#define submenu_wh
///submenu_wh( submenu, wh )
var a=argument[0]; a=a[2];
if argument_count>1 a[@3]=argument[1];
return(a[3]);

#define submenu_wr
///submenu_wr( submenu, wr )
var a=argument[0]; a=a[2];
if argument_count>1 a[@4]=argument[1];
return(a[4]);

#define submenu_wt
///submenu_wt( submenu, wt )
var a=argument[0]; a=a[2];
if argument_count>1 a[@5]=argument[1];
return(a[5]);

#define submenu_wc
///submenu_wc( submenu, wc )
var a=argument[0]; a=a[2];
if argument_count>1 a[@6]=argument[1];
return(a[6]);

#define submenu_wscr
///submenu_wscr( submenu, wc )
var a=argument[0]; a=a[0];
if argument_count>1 a[@6]=argument[1];
return(a[6]);

#define submenu_x
///submenu_x( submenu )
var a = argument0[0];
return(a[0]);

#define submenu_y
///submenu_y( submenu )
var a = argument0[0];
return(a[1]);

#define submenu_w
///submenu_w( submenu )
var a = argument0[0];
return(a[2]);

#define submenu_h
///submenu_h( submenu )
var a = argument0[0];
return(a[3]);