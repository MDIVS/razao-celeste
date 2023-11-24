///add_prop( Prop Sy, dis, dir, ang1, força, massa )
var p;
p[0] = argument[1];
p[1] = argument[2];
p[2] = argument[3];
p[3] = c_orange;
p[4] = argument[4];
p[5] = argument[5]; //Massa
p[6] = 0; //var adc

if (argument_count > 4) p[3] = argument[4];

var ps = argument[0];
if (is_array(ps)) {
    if (is_array(ps[0])) { ps[@ array_length_1d(ps)] = p } else { ps[@ 0] = p };
}

return(p);
