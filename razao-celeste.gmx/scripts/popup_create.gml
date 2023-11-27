///popup_create( string, spr )
var i = instance_create(DW/2,DH*.9,obj_popup);
i.TXT = argument[0];
i.TIME = 45;
if argument_count>1 i.sprite_index=argument[1];
