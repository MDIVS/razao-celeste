///_ini_path_orbital( add direction, add distance )
var a = path_add();
var b = argument[0], c = 0;
if (argument_count > 1) c = argument[1];
path_add_point(a,DW/2+lengthdir_x(DH*.5+c,b),DH/2+lengthdir_y(DH*.5+c,b),100);
path_add_point(a,DW/2+lengthdir_x(DH*.48+c,45+b),DH/2+lengthdir_y(DH*.48+c,45+b),100);
path_add_point(a,DW/2+lengthdir_x(DH*.46+c,90+b),DH/2+lengthdir_y(DH*.46+c,90+b),100);
path_add_point(a,DW/2+lengthdir_x(DH*.44+c,135+b),DH/2+lengthdir_y(DH*.44+c,135+b),100);
path_add_point(a,DW/2+lengthdir_x(DH*.42+c,180+b),DH/2+lengthdir_y(DH*.42+c,180+b),100);
path_add_point(a,DW/2+lengthdir_x(DH*.44+c,225+b),DH/2+lengthdir_y(DH*.44+c,225+b),100);
path_add_point(a,DW/2+lengthdir_x(DH*.46+c,270+b),DH/2+lengthdir_y(DH*.46+c,270+b),100);
path_add_point(a,DW/2+lengthdir_x(DH*.48+c,315+b),DH/2+lengthdir_y(DH*.48+c,315+b),100);
path_set_kind(a,1);
path_set_precision(a,4); 
path_start(a,5,1,1);
return(a);
