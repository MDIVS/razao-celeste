///scr_menu_ivan()
if((image_index mod 10)==0)part_particles_create(GUIPARTSY,DW/2,DH/2,parts.starsbackground,1);
draw_clear(0);
draw_set_alpha(Now[0]/30);

draw_set_font(algerian48);
draw_text_colour(DW/2,48,"IVAN",c_.pink,c_.pink,c_.pink,c_.pink,Now[0]/30);
draw_set_font(arialbold12);

var t = "Ivan Sobrenome#emaildoivan@email.com#Produtor musical do game##
Algo a mais, algo a mais, algo a mais, algo a mais, algo a mais, algo a mais, algo a mais, algo a mais, algo a mais, algo a mais, algo a mais.##Algo a mais, algo a mais, algo a mais, algo a mais, algo a mais, algo a mais, algo a mais, algo a mais, algo a mais, algo a mais, algo a mais, algo a mais, algo a mais, algo a mais."
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
