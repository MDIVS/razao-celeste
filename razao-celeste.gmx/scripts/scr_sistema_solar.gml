///scr_sistema_solar
draw_set_alpha(Now[0]/30);
var s = max(DW/1280,DH/1024);
draw_background_ext(bg_CRU,DW/2-640*s,DH/2-512*s,s,s,0,-1,Now[0]/30);
DrawCircle(DW/2,DH/2,252,6303488,6303488,Now[0]/30,Now[0]/30,40,48);
DrawCircle(DW/2,DH/2,112,24671,24671,Now[0]/30,Now[0]/30,24,48);

var i, dis, dir;
for(i=0;i<100;i++){dis=133+(i mod 20)*2;dir=i*11+image_index/2;draw_sprite(spr_asteroid,0,DW/2+lengthdir_x(dis,dir),DH/2+lengthdir_y(dis,dir))};
for(i=0;i<150;i++){dis=268+(i mod 20)*2;dir=i*11+image_index/4;draw_sprite(spr_asteroid,0,DW/2+lengthdir_x(dis,dir),DH/2+lengthdir_y(dis,dir))};

if B3(MA,DW/2,DH/2,24,"Sol",c_orange,c_.dkdkgray){Now[1]=-3;Now[2]=menu_Sol;PlaySom(sound1,0,VSom,0)};
if B3(MA,DW/2+88,DH/2,48,"Telúricos",c_yellow,c_.dkdkgray){Now[1]=-3;Now[2]=ini_teluricosview;PlaySom(sound1,0,VSom,0)};
if B3(MA,DW/2+228,DH/2,56,"Gasosos",16743936,c_.dkdkgray){Now[1]=-3;Now[2]=ini_gasososview;PlaySom(sound1,0,VSom,0)};
B3(MA,DW/2-148,DH/2,56,"Cinturão de#Asteroides",c_silver,c_.dkdkgray);
B3(MA,DW/2-288,DH/2,56,"Nuvem de#Oort",c_silver,c_.dkdkgray);

draw_primitive_begin(pr_trianglefan);
draw_vertex_colour(0,DH-80,2100224,1);
draw_vertex_colour(0,DH-112,2100224,0);
draw_vertex_colour(DW,DH-112,2100224,0);
draw_vertex_colour(DW,DH-80,2100224,1);
draw_vertex_colour(DW,DH,2100224,1);
draw_vertex_colour(0,DH,2100224,1);
draw_primitive_end();

draw_primitive_begin(pr_trianglefan);
draw_vertex_colour(0,80,2100224,1);
draw_vertex_colour(0,0,2100224,1);
draw_vertex_colour(DW,0,2100224,1);
draw_vertex_colour(DW,80,2100224,1);
draw_vertex_colour(DW,112,2100224,0);
draw_vertex_colour(0,112,2100224,0);
draw_primitive_end();

draw_text(DW/2,40,"Este é o Sistema Solar");
draw_set_font(arial8);
draw_text_ext(DW/2,64,"O Sistema Solar é dividido em cinco partes: o Sol, os Planetas Telúricos, o Cinturão de Asteróides, os Planetas Gasosos e a Nuvem de Oort",12,DW*.8);
draw_set_font(algerian16);
draw_text_colour(DW-128,20,"RAZÃO CELESTE",c_red,c_red,c_red,c_red,Now[0]/30);
draw_text_colour(DW-128,40,"SISTEMA SOLAR",c_.pink,c_.pink,c_.pink,c_.pink,Now[0]/30);
draw_set_font(arialbold12);

if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=scr_menu;PlaySom(sound2,0,VSom,0)};
Now[0]=min(30,Now[0]+Now[1]);if Now[0]<0{GUI=Now[2];Now[0]=0;Now[1]=3;Now[2]=0};
