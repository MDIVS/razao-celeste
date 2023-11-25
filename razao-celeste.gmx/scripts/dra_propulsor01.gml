///dra_propulsor01()
draw_self();
var dir = random(360), dis = random(sprite_height/2);
var xx = x+lengthdir_x(dis,dir);
var yy = y+lengthdir_y(dis,dir);
part_particles_create_colour(DRAPARTSY,xx,yy,parts.propparts,image_blend,ceil(3*A.Spd[0]/A.Spd[1]));
