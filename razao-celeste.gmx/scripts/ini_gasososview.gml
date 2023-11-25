#define ini_gasososview
///ini_gasososview
DRA = dra_gasososview;
GUI = gui_gasososview;
Now[3] = 0;
Now[4] = ini_cam3d(0,0,0,30,-15,100,115);

#define dra_gasososview
cam3d_ctrlscreen(Now[4]);
cam3d_set_projection(Now[4]);
draw_set_colour(c_gray);
ss3dview_sol(695.508/4);
ss3dview_jupiter();
ss3dview_saturno();
ss3dview_urano();
ss3dview_netuno();
draw_set_colour(c_white);

Now[3]++;

#define gui_gasososview
draw_set_alpha(Now[0]/30);
draw_set_font(algerian16);
draw_text_colour(DW-128,20,"RAZÃO CELESTE",c_red,c_red,c_red,c_red,Now[0]/30);
draw_text_colour(DW-128,40,"GASOSOS",c_.pink,c_.pink,c_.pink,c_.pink,Now[0]/30);
draw_set_font(arial8);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
var t = "Planetas gasosos ou Gigantes Gasosos são planetas de grandes dimensões para diâmetro e massa e que não são principalmente compostos de rocha ou outras matérias sólidas.##Os 4 planetas gasosos do Sistema Solar são: Júpiter, Saturno, Urano e Netuno.##A escala da representação ao lado não está de acordo com a realidade*";
draw_text_ext(DW-32,60,t,14,180);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(arialbold12);
dra_planet(64,DH/5,36,1,image_index,3,background_get_texture(tx_jupiter));
dra_planet(64,DH/5*2,36,1,-image_index,27,background_get_texture(tx_saturno));
dra_planet(64,DH/5*3,36,1,image_index,98,background_get_texture(tx_urano));
dra_planet(64,DH/5*4,36,1,image_index,30,background_get_texture(tx_netuno));

if BTech(MA,image_index,64,DH/5,52,"",16743936){Now[1]=-3;Now[2]=menu_Jupiter;PLANETA=instance_create(0,0,obj_Jupiter);PlaySom(sound1,0,VSom,0)};
if BTech(MA,image_index,64,DH/5*2,52,"",16743936){Now[1]=-3;Now[2]=menu_Saturno;PLANETA=instance_create(0,0,obj_Saturno);PlaySom(sound1,0,VSom,0)};
if BTech(MA,image_index,64,DH/5*3,52,"",16743936){Now[1]=-3;Now[2]=menu_Urano;PLANETA=instance_create(0,0,obj_Urano);PlaySom(sound1,0,VSom,0)};
if BTech(MA,image_index,64,DH/5*4,52,"",16743936){Now[1]=-3;Now[2]=menu_Netuno;PLANETA=instance_create(0,0,obj_Netuno);PlaySom(sound1,0,VSom,0)};
if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=scr_sistema_solar;PlaySom(sound2,0,VSom,0)};

Now[0]=min(30,Now[0]+Now[1]);
if Now[0]<0{DRA=-1;GUI=Now[2];cam3d_destroy(Now[4]);Now[0]=0;Now[1]=1;Now[2]=0;Now[3]=0;Now[4]=0};