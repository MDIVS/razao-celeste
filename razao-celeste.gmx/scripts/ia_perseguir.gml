///ia_perseguir( object, stayat );
var o = argument0, dir = point_direction(x,y,o.x,o.y);
ia_direcionar(dir);
if point_distance(x,y,o.x,o.y)>argument1&&abs(angle_difference(dir,direction))<30 ia_acelerar() else ia_estabilizar();
