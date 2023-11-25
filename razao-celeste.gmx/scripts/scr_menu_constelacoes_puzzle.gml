///scr_menu_constelacoes_puzzle()
draw_clear(0);
draw_set_alpha(Now[0]/30);
draw_rectangle_colour(0,0,DW,DH,c_.dkdkgray,c_.dkdkgray,c_.dkdkgray,c_.dkdkgray,0);
draw_set_font(algerian16);
draw_text_colour(DW-128,20,"RAZÃO CELESTE",c_red,c_red,c_red,c_red,Now[0]/30);
draw_text_colour(DW-128,40,"PUZZE",c_.pink,c_.pink,c_.pink,c_.pink,Now[0]/30);

var y1 = 64, y2 = 64+256;
var x1 = Now[3]+16, x2 = x1+256;
if (Botao_rect(x1,y1,x2,y2,0,"",-1,-1,1) && Now[1]>0) {
    Now[1] = -1;
    Now[2] = puzzle_andromeda;
    PlaySom(sound1,0,VSom,0);
};
if (Botao_rect(x2+16,y1,x2+16+256,y2,0,"",-1,-1,1) && Now[1]>0) {
    Now[1] = -1;
    Now[2] = puzzle_andromeda;
    PlaySom(sound1,0,VSom,0);
};
if (Botao_rect(x2+32+256,y1,x2+32+512,y2,0,"",-1,-1,1) && Now[1]>0) {
    Now[1] = -1;
    Now[2] = puzzle_andromeda;
    PlaySom(sound1,0,VSom,0);
};
draw_background_stretched(bg_And,x1,y1,256,256);
draw_background_stretched(bg_And,x1+256+16,y1,256,256);
draw_background_stretched(bg_And,x1+512+32,y1,256,256);
for (var i=0; i<3; i++) {
    draw_primitive_begin(pr_trianglestrip);
    draw_vertex_colour(x1+i*16+i*256,y2-60,0,0);
    draw_vertex_colour(x1+i*16+i*256,y2,c_blue,.5);
    draw_vertex_colour(x2+i*16+i*256,y2-60,0,0);
    draw_vertex_colour(x2+i*16+i*256,y2,c_blue,.5);
    draw_primitive_end();
    draw_text_colour(x1+128+16*i+256*i,64+256-20,"ANDRÔMEDA",c_orange,c_orange,c_orange,c_orange,(Now[0]-15)/15);
}

draw_set_font(arialbold12);
if (Botao_rect(DW/2-64,DH/4*3,DW/2+64,DH/4*3+40,40,"Retornar",c_dkgray,c_silver,1) && Now[1]>0) {
    Now[1] = -1;
    Now[2] = scr_menu_constelacoes;
    PlaySom(sound2,0,VSom,0);
}

Now[0]=min(30,Now[0]+Now[1]);
if (Now[0] < 0) {
    GUI = Now[2];
    Now[0]=0; Now[1]=1; Now[2]=0;
}
