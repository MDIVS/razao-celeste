#define ini_teluricosview
///ini_teluricosview
DRA = dra_teluricosview;
GUI = gui_teluricosview;
Now[3] = 0;
Now[4] = ini_cam3d(0,0,0,30,-15,100,6);

#define dra_teluricosview
cam3d_ctrlscreen(Now[4]);
cam3d_set_projection(Now[4]);
draw_set_colour(c_gray);
ss3dview_sol(10);
ss3dview_mercurio();
ss3dview_venus();
ss3dview_terra();
ss3dview_marte();
draw_set_colour(c_white);

Now[3]++;

#define gui_teluricosview
draw_set_alpha(Now[0]/30);
draw_set_font(algerian16);
draw_text_colour(DW-128,20,"RAZÃO CELESTE",c_red,c_red,c_red,c_red,Now[0]/30);
draw_text_colour(DW-128,40,"TELÚRICOS",c_.pink,c_.pink,c_.pink,c_.pink,Now[0]/30);
draw_set_font(arial8);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
var t = "Um planeta telúrico ou planeta sólido é um planeta rochoso assim como a Terra.##Os planetas telúricos do Sistema Solar são Mercúrio, Vênus, Terra e Marte.##Eles estão mais próximos do Sol e por isso estão situados no Sistema Solar interior e têm maior densidade que os planetas gasosos.##A escala da representação ao lado não está de acordo com a realidade*##Repare na excentricidade da órbita de Mercúrio.";
draw_text_ext(DW-32,60,t,14,180);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(arialbold12);
dra_planet(64,DH/5,36,1,image_index,0,background_get_texture(tx_mercurio));
dra_planet(64,DH/5*2,36,1,-image_index,3,background_get_texture(tx_venus));
dra_planet(64,DH/5*3,36,1,image_index,23,background_get_texture(tx_terra));
dra_planet(64,DH/5*4,36,1,image_index,25,background_get_texture(tx_marte));

if BTech(MA,image_index,64,DH/5,52,"",16743936){Now[1]=-3;Now[2]=menu_Mercurio;PLANETA=instance_create(0,0,obj_Mercurio);PlaySom(sound1,0,VSom,0)};
if BTech(MA,image_index,64,DH/5*2,52,"",16743936){Now[1]=-3;Now[2]=menu_Venus;PLANETA=instance_create(0,0,obj_Venus);PlaySom(sound1,0,VSom,0)};
if BTech(MA,image_index,64,DH/5*3,52,"",16743936){Now[1]=-3;Now[2]=menu_Terra;PlaySom(sound1,0,VSom,0)};
if BTech(MA,image_index,64,DH/5*4,52,"",16743936){Now[1]=-3;Now[2]=menu_Marte;PLANETA=instance_create(0,0,obj_Marte);PlaySom(sound1,0,VSom,0)};
if Bspr(MA,spr_home,0,DW/2,DH-48){Now[1]=-3;Now[2]=scr_sistema_solar;PlaySom(sound2,0,VSom,0)};

if (Now[1]>0 && PLANETA!=-1) {with(PLANETA) instance_destroy(); PLANETA = -1};

Now[0]=min(30,Now[0]+Now[1]);
if Now[0]<0{DRA=-1;GUI=Now[2];cam3d_destroy(Now[4]);Now[0]=0;Now[1]=1;Now[2]=0;Now[3]=0;Now[4]=0};