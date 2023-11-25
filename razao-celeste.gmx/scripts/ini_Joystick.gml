///ini_Joystick( x, y, raio, c1, c2, alpha )
var j;
j[0] = 0; // x
j[1] = 0; // y
j[2] = 1; // raio
j[3] = c_black; // cor 1
j[4] = c_white; // cor 2
j[5] = 1; // alpha
j[6] = -1; // device
j[7] = 0; // direction
j[8] = 0; // distance

for (var i=0; i<argument_count; i++) j[i] = argument[i];
return(j);
