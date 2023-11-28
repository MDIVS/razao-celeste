#define CS_PMG
//Script de Customização do Módulo Grande do Player
if visible CS_PMG_CREATE();

var w = DW*.5, h = DH-200;
image_xscale += (min(w/256,h/123)-image_xscale)/10;
image_yscale = image_xscale;
image_alpha = io_nave.image_alpha;

if io_nave.Drag!=-1 {sprite_index=spr_pmgparts; image_index=0} else sprite_index=spr_pmg;
draw_sprite_ext(spr_pmg,image_index,x,y,image_xscale,image_yscale,image_angle,merge_colour(image_blend,0,(io_nave.Drag!=-1)/3*2),image_alpha);
if io_nave.Drag!=-1 draw_sprite_ext(spr_pmgparts,0,x,y,image_xscale,image_yscale,image_angle,c_.myblue,image_alpha);
if is_array(Weap[0]) {
    var i, spr, dis, dir, xx, yy;
    for (i=0; i<array_length_1d(Weap); i++) {
        var dba = Weap[i];
        dis=dba[1]*image_xscale; dir=image_angle+dba[2]; xx=x+lengthdir_x(dis,dir); yy=y+lengthdir_y(dis,dir);
        draw_sprite_ext(weapon_get_sprite(dba[0]),0,xx,yy,image_xscale,image_yscale,image_angle+dba[3],-1,other.image_alpha);
    }
}

CS_PMG_ITENSBAR();
if io_nave.Menu=="Armas" CS_PMG_ARTILHARIA();

#define CS_PMG_CREATE
visible = 0;
image_alpha = 0;
image_xscale = 0;
image_yscale = 0;
image_angle = 0;
direction = 0;
io_nave.Menu = "Armas";
var t = choose("Humm... Módulo Grande","Módulo Grande","Vejamos... Módulo Grande...");
agente9_speak(t);

#define CS_PMG_ARTILHARIA
with(io_nave) {
    for (var i=0; i<3; i++) {
        draw_sprite_ext(Eqs[i,1],0,DW-88,DH/10+144+112*i,1-(Drag==i)/3,1-(Drag==i)/3,0,-1,image_alpha);
        if Drag==i {
            draw_sprite_ext(Eqs[i,1],0,device_mouse_x(0),device_mouse_y(0),1-Drop/2,1-Drop/2,0,-1,.5+Drop/2);
            if Drop {
                if Astrocoins >= Eqs[i,3] draw_set_colour(16743936) else draw_set_colour(c_orange);
                draw_set_font(algerian48);
                dra_imgtxtsource(spr_astrocoin,0,device_mouse_x(0),device_mouse_y(0)-48,-Eqs[i,3],24);
                draw_set_font(arialbold12);
                draw_set_colour(c_white);
            }
        }
    }
}

#define CS_PMG_ITENSBAR
var main_w=144, main_x2=DW-16, main_x1=main_x2-main_w;
var main_y1=DH/10, main_y2=DH*.9, main_h=main_y2-main_y1;

draw_set_colour(c_aqua);
draw_set_alpha(.2);
dra_rrect_ext(main_x1,main_y1,main_x2,main_y2,0,16,8);
draw_set_alpha(1);
dra_rrect_width(main_x1,main_y1,main_x2,main_y2,8,16,8);
draw_set_colour(c_white);

if bmiddlecenter_arial12bold(main_x2-72,main_y1+48,"Artilharia",c_.myblue) io_nave.Menu="Armas";