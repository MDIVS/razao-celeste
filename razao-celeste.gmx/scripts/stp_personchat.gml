///stp_personchat( Chat )
var a = argument0; //chat system
var a1 = a[1]; //aspect settings
var a2 = a[2]; //txt settings

a2[@1]++; //aumentar a contagem do texto
var txt = string_copy(a2[0],0,a2[1]);

//adaptar a width com base no texto
var txtw = string_width(txt);
personchat_width(a,min(txtw+a1[3]*2,DW/3));

//adaptar a height com base no texto e na width
var txth = string_height_ext(txt,20,a1[0]-a1[3]*2);
personchat_height(a,txth+a1[3]*2);

personchat_x1(a,sprite_width-sprite_xoffset+8);
personchat_y1(a,-sprite_yoffset);
