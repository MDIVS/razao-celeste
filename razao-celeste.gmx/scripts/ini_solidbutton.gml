#define ini_solidbutton
///ini_solidbutton( x, y, alpha, corback, cor2, glow, texto, fonte )
var button;
var mydata;
var change;
var action;

mydata[0] = argument[0]; //xx
mydata[1] = argument[1]; //yy
mydata[2] = argument[2]; //alpha
mydata[3] = argument[3]; //color1
mydata[4] = argument[4]; //color2
mydata[5] = argument[5]; //glow
mydata[6] = string(argument[6]); //texto
mydata[7] = argument[7]; //fonte
mydata[8] = 0; //width
mydata[9] = 0; //height

change[0] = mydata[0];
change[1] = mydata[1];
change[2] = mydata[2];

action[0] = 0; //inside
action[1] = 0; //pressed
action[2] = 0; //pressing
action[3] = 0; //realeased

button[0] = mydata;
button[1] = change;
button[2] = action;

return(button);

#define step_solidbutton
///step_solidbutton( solidbutton )
var button = argument0;
var mydata = button[0];
var change = button[1];
var action = button[2];

mydata[@0] += (change[0]-mydata[0])/10;
mydata[@1] += (change[1]-mydata[1])/10;
mydata[@2] += (change[2]-mydata[2])/10;

var bw = font_get_size(mydata[7])/2;
var to_w = string_width(mydata[6])+bw*4;
var to_h = string_height(mydata[6])+bw*4;

mydata[@8] += (to_w-mydata[8])/10;
mydata[@9] += (to_h-mydata[9])/10;

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

action[@0] = point_in_rectangle(mx,my,mydata[0]-mydata[8]/2,mydata[1]-mydata[9]/2,mydata[0]+mydata[8]/2,mydata[1]+mydata[9]/2);
action[@1] = 0; //pressed
action[@3] = 0; //realeased
if action[0]&&device_mouse_check_button_pressed(0,mb_left) {action[@1]=1; action[@2]=1}
if action[2] {
    if !action[0] action[@2]=0;
    if device_mouse_check_button_released(0,mb_left) {action[@2]=0; action[@3]=1}
}

#define dra_solidbutton
///dra_solidbutton( solidbutton )
var mydata = argument0[0];
if floor(mydata[8])<2||floor(mydata[9])<2 exit;

var bw = font_get_size(mydata[7])/2;
var s = (mydata[8]-bw*4)/string_width(mydata[6]);
var precor = draw_get_colour();
draw_set_font(mydata[7]);

//draw
draw_set_colour(mydata[4]);
draw_roundrect_ext(mydata[0]-mydata[8]/2,mydata[1]-mydata[9]/2,mydata[0]+mydata[8]/2,mydata[1]+mydata[9]/2,bw*4,bw*4,0);
draw_set_colour(mydata[3]);
draw_roundrect_ext(mydata[0]-mydata[8]/2+bw,mydata[1]-mydata[9]/2+bw,mydata[0]+mydata[8]/2-bw,mydata[1]+mydata[9]/2-bw,bw*2,bw*2,0);
draw_set_colour(mydata[4]);
draw_text_transformed(mydata[0],mydata[1],mydata[6],s,s,0);

draw_set_colour(precor);

#define solidbutton_pressed
///solidbutton_pressed( solidbutton )
var a = argument0[2];
return(a[1]);

#define solidbutton_pressing
///solidbutton_pressing( solidbutton )
var a = argument0[2];
return(a[2]);

#define solidbutton_released
///solidbutton_released( solidbutton )
var a = argument0[2];
return(a[3]);

#define solidbutton_x
///solidbutton_x( solidbutton, x )
var button = argument[0];
var mydata = button[0];
if argument_count>1 {
    var change = button[1];
    change[@0] = argument[1];
}

return(mydata[0]);

#define solidbutton_y
///solidbutton_y( solidbutton, y )
var button = argument[0];
var mydata = button[0];
if argument_count>1 {
    var change = button[1];
    change[@1] = argument[1];
}

return(mydata[1]);

#define solidbutton_alpha
///solidbutton_alpha( solidbutton, alpha )
var button = argument[0];
var mydata = button[0];
if argument_count>1 {
    var change = button[1];
    change[@2] = argument[1];
}

return(mydata[2]);