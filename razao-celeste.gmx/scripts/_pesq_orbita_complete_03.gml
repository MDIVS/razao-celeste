///_pesq_orbita_complete_03()
Now[0]++;
var dis1 = point_distance(DW/2,DH/2,Now[1].x,Now[1].y);
var dir = point_direction(DW/2,DH/2,Now[1].x,Now[1].y);
var dis2 = round((dis1-PLANETA._AMIN)/PLANETA._AVAR*(PLANETA.PesqTrans[1]-PLANETA.PesqTrans[2])+PLANETA.PesqTrans[2]);

if (dis2 == PLANETA.PesqTrans[2] && dis1 <= point_distance(DW/2,DH/2,Now[1].Perielio[1],Now[1].Perielio[2])) {
    Now[1].Perielio[0] = .03;
    Now[1].Perielio[1] = Now[1].x;
    Now[1].Perielio[2] = Now[1].y;
}

if (dis2 == PLANETA.PesqTrans[1] && dis1 >= point_distance(DW/2,DH/2,Now[1].Afelio[1],Now[1].Afelio[2])) {
    Now[1].Afelio[0] = .03;
    Now[1].Afelio[1] = Now[1].x;
    Now[1].Afelio[2] = Now[1].y;
}

Now[4] = max(Now[4],dis2);
Now[5] = min(Now[5],dis2);

draw_background_tiled(bg_pesq,0,0);
var alpha = image_index/15;
draw_set_alpha(alpha);

draw_set_halign(fa_left);
//draw star
DrawCircle(DW/2,DH/2,DH*.05,c_silver,c_silver,alpha,alpha,16,DH*.05);
DrawCircle(DW/2,DH/2,DH*.05,c_orange,c_orange,alpha,alpha,16,4);
draw_text(DW/2+DH*.06,DH/2,string_upper(PLANETA.Estrela));

//draw orbita
if (Now[3] == 2) {
    draw_set_alpha(draw_get_alpha()/2);
    draw_path(Now[2],0,0,1);
    draw_set_alpha(draw_get_alpha()*2);
}

var t = "MILHÕES DE KM", w=string_width(t);
//draw perielio
if (Now[1].Perielio[0] != 0) Now[1].Perielio[0] += 1/room_speed;
draw_set_alpha(max(0,Now[1].Perielio[0]));
DrawCircle(Now[1].Perielio[1],Now[1].Perielio[2],DH*.02,c_silver,c_silver,Now[1].Perielio[0],Now[1].Perielio[0],16,DH*.02);
DrawCircle(Now[1].Perielio[1],Now[1].Perielio[2],DH*.02,c_gray,c_gray,Now[1].Perielio[0],Now[1].Perielio[0],16,2);
draw_text(Now[1].Perielio[1]+DH*.03,Now[1].Perielio[2],"PERIÉLIO");
draw_text(Now[1].Perielio[1]-DH*.03-w,Now[1].Perielio[2]+10,t);

//draw afelio
if (Now[1].Afelio[0] != 0) Now[1].Afelio[0] += 1/room_speed;
draw_set_alpha(max(0,Now[1].Afelio[0]));
DrawCircle(Now[1].Afelio[1],Now[1].Afelio[2],DH*.02,c_silver,c_silver,Now[1].Afelio[0],Now[1].Afelio[0],16,DH*.02);
DrawCircle(Now[1].Afelio[1],Now[1].Afelio[2],DH*.02,c_dkgray,c_dkgray,Now[1].Afelio[0],Now[1].Afelio[0],16,2);
draw_text(Now[1].Afelio[1]+DH*.03,Now[1].Afelio[2],"AFÉLIO");
draw_text(Now[1].Afelio[1]-DH*.03-w,Now[1].Afelio[2]+10,t);

//draw planet
draw_set_alpha(alpha);
DrawCircle(Now[1].x,Now[1].y,DH*.02,c_silver,c_silver,alpha,alpha,16,DH*.02);
DrawCircle(Now[1].x,Now[1].y,DH*.02,c_orange,c_orange,alpha,alpha,16,2);
draw_text(Now[1].x+DH*.03,Now[1].y,string_upper(PLANETA.Nome));

//draw distance
var x1 = DW/2+lengthdir_x(DH*.07,point_direction(DW/2,DH/2,Now[1].x,Now[1].y));
var x2 = Now[1].x+lengthdir_x(DH*.04,point_direction(Now[1].x,Now[1].y,DW/2,DH/2));
var y1 = DH/2+lengthdir_y(DH*.07,point_direction(DW/2,DH/2,Now[1].x,Now[1].y));
var y2 = Now[1].y+lengthdir_y(DH*.04,point_direction(Now[1].x,Now[1].y,DW/2,DH/2));
var xx = (x1+x2)/2;
var yy = (y1+y2)/2;
draw_set_colour(c_orange);
draw_arrow(x1,y1,x2,y2,12);
DrawCircle(xx,yy,8,c_orange,c_orange,alpha,alpha,16,8);
draw_set_colour(c_white);
draw_text(xx+DH*.03,yy,string_upper("DISTÂNCIA"));
draw_set_font(font_CooperBlack); draw_set_halign(fa_right);
draw_text_colour(xx-DH*.03,yy-10,dis2,c_aqua,c_aqua,c_aqua,c_aqua,alpha);
draw_text_colour(Now[1].Perielio[1]-DH*.03,Now[1].Perielio[2]-10,PLANETA.PesqTrans[2],c_aqua,c_aqua,c_aqua,c_aqua,max(0,Now[1].Perielio[0]));
draw_text_colour(Now[1].Afelio[1]-DH*.03,Now[1].Afelio[2]-10,PLANETA.PesqTrans[1],c_aqua,c_aqua,c_aqua,c_aqua,max(0,Now[1].Afelio[0]));
draw_set_font(font_CourierNew);
draw_text(xx-DH*.03,yy+10,"MILHÕES DE KM");
draw_set_halign(fa_center);

if (Now[3] == 0) {
    var t = "Toque para verificar as distâncias máxima e mínima que o#planeta "+PLANETA.Nome+" mantém em relação à estrela "+PLANETA.Estrela+".";
    draw_text(DW/2,DH*.8,t);
    dra_Toque(DW*.85,DH*.6,35,c_orange,c_yellow,Now[0]);
    if (device_mouse_check_button_pressed(0,mb_left)) {Now[1].path_speed = 5; Now[3] = 1};
} else if (Now[3] == 1) {
    if (Now[1].path_position == 1) {
        Now[3] = 2;
        with(Now[1]) path_start(sy.Now[2],5,1,1);
        addpopup_moedas(DW*.7,DH*.33,200);
    }
} else if (Now[3] == 2) {
    draw_text(DW/2,DH*.8,"Isso! A órbita elíptica do planeta "+PLANETA.Nome+" mantém-no a uma distância que#varia entre "+string(PLANETA.PesqTrans[2])+" e "+string(PLANETA.PesqTrans[1])+" milhões de quilômetros de sua estrela "+PLANETA.Estrela+".");
    dra_Toque(DW*.85,DH*.6,35,c_orange,c_yellow,Now[0]);
    if (device_mouse_check_button_pressed(0,mb_left)) {
        image_index = 30;
        image_speed = -3;
    }
    if (image_index <= 0) {
        with(Now[1]) instance_destroy();
        path_delete(Now[2]);
        Now[0]=0; Now[1]=choose(ini_OBA2018n3q1, ini_OBA2012n3q5); Now[2]=0; Now[3]=0; Now[4]=0; Now[5]=0;
        GUI=gui_OBA; 
        image_index = 0;
        image_speed = 1;
        PlaySom(sound2,0,VSom,0);
    }
}

draw_set_alpha(1);
