///scr_weaponsy( weap system )
var arma, as = argument[0];
if (!is_array(as[0])) exit;
for (var i=0; i<array_length_1d(as); i++) {
    arma = as[i];
    if (arma[0] != -1) script_execute(arma[0],arma);
}
