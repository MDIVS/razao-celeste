///menu_Terra()
Now[0]++;
draw_clear(0);
draw_set_alpha(image_index/30);
draw_background_tiled_ext(tx_null,0,0,1,1,2105344,image_index/30);
if (Botao_rect(DW*.1,DH*.2,DW*.9,DH*.8,16,"",4210432,c_white,1)) {GUI=mi_001_hist; PlaySom(sound1,0,VSom,0)};
dra_planet(DW/2-DH*.2-32,DH/2,DH*.2,1,image_index/3,image_index/6,PLANETA.TEXTURA);

draw_set_halign(fa_left);
var t = 'A Terra é o terceiro planeta mais próximo do Sol, o mais denso e o quinto maior dos oito planetas do Sistema Solar. É também o maior dos quatro planetas telúricos. É por vezes designada como Mundo ou Planeta Azul.';
var x1 = DW*.2+DH*.4+64, x2 = DW*.8-32;
draw_text_ext(round(DW/2+32),round(DH/2),t,13,DW*.4-64);
draw_set_halign(fa_center);

draw_text_colour(DW/2,32,PLANETA.Nome+", "+PLANETA.Descricao,c_yellow,c_orange,c_yellow,c_yellow,image_index/room_speed);

var switching = 0;
if (Botao_rect(DW*.2,DH*.8+16,DW*.4,DH*.8+48,16,"Anterior",4210432,c_white,1)) switching = -1;
if (Botao_rect(DW*.6,DH*.8+16,DW*.8,DH*.8+48,16,"Próximo",4210432,c_white,1)) switching = 1;
if (switching != 0) {
    var plan = instance_create(0,0,choose_planet(PLANETA.object_index,switching));
    with(PLANETA) instance_destroy();
    PLANETA = plan;
    PlaySom(sound1,0,VSom,0);
}

scr_syconfig();
draw_set_alpha(1);
