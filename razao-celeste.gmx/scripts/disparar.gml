///disparar( arma, spr, scr )
var arma = argument[0];
var dis = arma[1], dir = arma[2]+image_angle;
var xx = x+lengthdir_x(dis,dir), yy = y+lengthdir_y(dis,dir);
xx+=lengthdir_x(10,arma[4]); yy += lengthdir_y(10,arma[4]);

var ic = instance_create(xx,yy,obj_disparo);
ic.sprite_index = argument[1];
ic.DRA = argument[2];
ic.direction = arma[4];
ic.Alvos = arma[9];
ic.From = id;
