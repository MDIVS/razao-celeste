///ia_direcionar( direcao )
var dif = angle_difference(argument0,direction);
Dir[0] = min(abs(dif),Dir[1],abs(Dir[0])+Dir[2])*sign(dif);
