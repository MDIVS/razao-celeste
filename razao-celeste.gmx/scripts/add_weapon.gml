///add_weapon( WS, dis, dir, ang1, scr, ++ alvo 1, alvo 2, alvo 3... )
var al = 0;
for (var i=0; i<argument_count-5; i++) al[i] = argument[5+i];

var as, a;
as = argument[0];
a[0] = argument[4]; //scr
a[1] = argument[1]; //dis
a[2] = argument[2]; //dir
a[3] = argument[3]; //ang1
a[4] = 0;           //ang
a[5] = 0;           //temp
a[6] = 0;           //var
a[7] = 0;
a[8] = 0;
a[9] = al;

if (is_array(as)) {
    if (is_array(as[0])) {as[@ array_length_1d(as)] = a} else {as[@ 0] = a};
}

return(a);
