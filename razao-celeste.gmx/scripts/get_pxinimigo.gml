///get_pxinimigo( x, y, nave, raio )
var alvo=-4, ads=argument[3], pd;
with(argument[2]) {pd=point_distance(argument[0],argument[1],x,y);if pd<ads{alvo=id;ads=pd}}
return alvo;
