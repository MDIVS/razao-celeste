///add_port( Port Sy, dis, dir, obj, ++ cor )
var n;
n[0] = -4;
var p;
p[0] = argument[1];
p[1] = argument[2];
p[2] = -1;
p[3] = n;
p[4] = 300;
p[5] = argument[3];

if (argument_count > 4) p[2] = argument[4];

var ptsy = argument[0];
if (is_array(ptsy)) {
    if (is_array(ptsy[0])) { ptsy[@ array_length_1d(ptsy)] = p } else { ptsy[@ 0] = p; show_debug_message("added porto[0]")};
}

return(p);
