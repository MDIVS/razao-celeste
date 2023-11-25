///scr_menu_millionthvector()
if((image_index mod 10)==0)part_particles_create(GUIPARTSY,DW/2,DH/2,parts.starsbackground,1);
draw_clear(0);
draw_set_alpha(Now[0]/30);

draw_set_font(algerian48);
draw_text_colour(DW/2,48,"MILLIONTHVECTOR",c_.pink,c_.pink,c_.pink,c_.pink,Now[0]/30);
draw_set_font(arialbold12);

var t = "MillionthVector#http://millionthvector.blogspot.com/#Artes gráficas das naves###I'm very thanks for Millionth Vector share your spaceship game arts with the developers community. It has help-me in development of this game and I'm thanks!"
draw_text_ext_colour(DW/2,DH/2,t,18,DW/3,c_red,c_red,c_red,c_red,Now[0]/30);

if (Botao_rect(DW/2-64,DH-32-40,DW/2+64,DH-32,48,"Retornar",-1,c_silver,1) && Now[1]>0) {
    Now[1] = -1;
    Now[2] = scr_menu_creditos;
    PlaySom(sound2,0,VSom,0);
}

Now[0]=min(30,Now[0]+Now[1]);
if (Now[0] < 0) {
    GUI = Now[2];
    Now[0]=0; Now[1]=1; Now[2]=0;
}
