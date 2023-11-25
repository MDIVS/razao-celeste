//zoombutton();
if (Title == "") ctrlviewmouse();
selectaobject();

if (VIEW_OBJECT!=-1 && !instance_exists(VIEW_OBJECT)) VIEW_OBJECT=-1;
if (VIEW_OBJECT!=-1) {
    //get parents settings
    var relacoes = " [NÃO IDENTIFICADO]", nave = 0, i = VIEW_OBJECT.object_index;
    while(i!=-100 && i!=-1) {
        if (i == obj_nvplayer) relacoes = " [ALIADO]";
        if (i == obj_nvinimigo) relacoes = " [INIMIGO]";
        if (i == obj_nave) nave = 1;
        i = object_get_parent(i);
    }
    
    //draw naves details
    if nave{
        var nome = VIEW_OBJECT.Nome;
        if (nome == "") nome = object_get_name(VIEW_OBJECT.object_index);
        draw_text(round(DW*.2),16,nome+relacoes);
        draw_text(round(DW*.2),32,"BLINDAGEM: "+string(ceil(VIEW_OBJECT.Vida[0]/VIEW_OBJECT.Vida[1]*100))+"% ("+string(ceil(VIEW_OBJECT.Vida[0]))+"/"+string(ceil(VIEW_OBJECT.Vida[1]))+")");
    }
    
    //centralize camera
    var dis = point_distance(view_xview+view_wview/2,view_yview+view_hview/2,VIEW_OBJECT.x,VIEW_OBJECT.y);
    var dir = point_direction(view_xview+view_wview/2,view_yview+view_hview/2,VIEW_OBJECT.x,VIEW_OBJECT.y);
    view_xview += lengthdir_x(min(dis,view_hview/30),dir);
    view_yview += lengthdir_y(min(dis,view_hview/30),dir);
}
