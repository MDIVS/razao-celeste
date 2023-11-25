///menu_creditos()
if((image_index mod 10)==0)part_particles_create(GUIPARTSY,DW/2,DH/2,parts.starsbackground,1);
draw_clear(0);
draw_set_alpha(Now[0]/30);

draw_set_font(algerian16);
draw_text_colour(DW-128,20,"RAZÃO CELESTE",c_red,c_red,c_red,c_red,Now[0]/30);
draw_text_colour(DW-128,40,"CRÉDITOS",c_.pink,c_.pink,c_.pink,c_.pink,Now[0]/30);
draw_set_font(arialbold12);

if (Botao_circle(DW/4,DH/3,DH/7,"Spaceships#sprites",c_.dkdkgray,c_yellow,24,10,1) && Now[1] > 0) {
    Now[1] = -1;
    Now[2] = scr_menu_millionthvector;
    PlaySom(sound1,0,VSom,0);
}

if (Botao_circle(DW/2,DH/3,DH/7,"Music & Sounds",c_.dkdkgray,16728576,24,8,1) && Now[1] > 0) {
    Now[1] = -1;
    Now[2] = scr_menu_ivan;
    PlaySom(sound1,0,VSom,0);
}

if (Botao_circle(DW/4*3,DH/3,DH/7,"Programmer",c_.dkdkgray,c_lime,24,8,1) && Now[1] > 0) {
    Now[1] = -1;
    Now[2] = scr_menu_maicon;
    PlaySom(sound1,0,VSom,0);
}

if (Botao_circle(DW/2,DH/3*2,DH/7,"Special Thanks",c_.dkdkgray,c_.pink,24,8,1) && Now[1] > 0) {
    Now[1] = -1;
    Now[2] = scr_menu_jorge;
    PlaySom(sound1,0,VSom,0);
}

if (Botao_rect(DW/2-64,DH-32-40,DW/2+64,DH-32,48,"Retornar",-1,c_silver,1) && Now[1]>0) {
    Now[1] = -1;
    Now[2] = scr_menu;
    PlaySom(sound2,0,VSom,0);
}

Now[0]=min(30,Now[0]+Now[1]);
if (Now[0] < 0) {
    GUI = Now[2];
    Now[0]=0; Now[1]=1; Now[2]=0;
}
