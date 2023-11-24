///tutorial_01_pbs01()
draw_clear(c_.darkblue);

var alpha = Now[0]/room_speed;

draw_set_alpha(alpha);
draw_sprite(spr_pbs01,0,DW/2,160);
draw_set_colour(c_silver);
draw_text(DW/2,360,"Recomendada para iniciantes.#A síntese de velocidade, fragilidade e beleza.##Carcaça:#Massa: 178t");
draw_set_colour(-1);

if (Botao_rect(DW/2-260,DH-48,DW/2-10,DH-16,32,"Escolher outro modelo",c_maroon,c_silver,1)) Now[1] = -1;
if (Botao_rect(DW/2+10,DH-48,DW/2+260,DH-16,32,"Aceitar e prosseguir",c_green,c_silver,1)) Now[1] = 1;

if (Now[0] == 0) {
    if (Now[1] == -1) {GUI=tutorial_01_escolha; Now[1]=-1};
    if (Now[1] == 1) {
        Now[0]=0; Now[1]=0;
        GUI=scr_menu;
        ini_open("Salvo.ini");
        ini_write_real("Player","ObjectId",obj_pbs01);
        ini_close();
        draw_set_alpha(1);
        exit;
    }
}

Now[0] = max(0,min(room_speed,Now[0]+1-2*(Now[1]!=0)));
