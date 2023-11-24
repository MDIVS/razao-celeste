///BotaoCircle_txtspr( x, y, r, txt, colour, spr, sub, dir )
var xx = argument0, yy = argument1, rr = argument2;
var tt = argument3, cc = argument4, ss = 0;
var sp = argument5, sb = argument6, dd = argument7;
if (tt != "") ss = rr*1.5/max(string_height(tt),string_width(tt));
var alpha = draw_get_alpha();

for (var i=0; i<array_length_1d(MA); i++) {
    if (point_in_circle(device_mouse_x_to_gui(i),device_mouse_y_to_gui(i),xx,yy,rr) && device_mouse_check_button_pressed(i,mb_left)) MA[i] = "B["+string(xx)+","+string(yy)+"]";
    if (MA[i] = "B["+string(xx)+","+string(yy)+"]") {
        alpha /= 2;
        if (!point_in_circle(device_mouse_x_to_gui(i),device_mouse_y_to_gui(i),xx,yy,rr)) MA[i] = "";
        if (!device_mouse_check_button(i,mb_left)) {
            MA[i] = "";
            return(1);
        };
    }
}

draw_primitive_begin(pr_trianglestrip);
for(i=0; i<=360; i+=22.5) {
    draw_vertex_colour(xx+lengthdir_x(rr,i),yy+lengthdir_y(rr,i),cc,alpha);
    draw_vertex_colour(xx+lengthdir_x(rr*.8,i),yy+lengthdir_y(rr*.8,i),cc,alpha);
}
draw_primitive_end();
draw_text_transformed_colour(xx,yy,tt,ss,ss,0,cc,cc,cc,cc,alpha);
draw_sprite(sp,sb,xx+lengthdir_x(rr,dd),yy+lengthdir_y(rr,dd));

return(0);
