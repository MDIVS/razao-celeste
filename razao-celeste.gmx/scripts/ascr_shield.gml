///ascr_shield( dba )
var dba = argument[0];
var dis = dba[1], dir = dba[2]+image_angle;
var xx = x+lengthdir_x(dis,dir), yy = y+lengthdir_y(dis,dir);

draw_sprite_ext(aspr_shield,0,xx,yy,1,1,dba[4],-1,image_alpha);

var alvo=dba[9];
for (var i=0; i<array_length_1d(alvo); i++) {
    with(obj_disparo){
        var obj = 1;
        if instance_exists(From){obj=0;if object_is_ancestor(From.object_index,alvo[i])obj=1};
        if dba[5]>=Dano&&obj&&point_distance(x,y,other.x,other.y)<other.RA[2]{
            var ic=instance_create(0,0,obj_shield);
            ic.From=other.id;
            ic.Drct=point_direction(other.x,other.y,x,y);
            ic.Raio=other.RA[2];
            
            dba[@5]-=Dano;
            PlaySom(snd_shield,0,VSom,0);
            instance_destroy();
        }
    }
}

dba[@ 5]=min(3,dba[5]+.01);
