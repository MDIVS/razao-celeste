///get_pxinimigo( x, y, nave )
var alvo = -4, ads = 500, pd;

with(argument[2]) {
    pd = point_distance(argument[0],argument[1],x,y);
    if (pd < ads) {alvo = id; ads = pd}
}

return(alvo);
