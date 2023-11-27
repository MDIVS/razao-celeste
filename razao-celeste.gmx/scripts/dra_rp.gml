///dra_rp()
with(obj_nave) {
    if rectangle_in_circle(view_xview,view_yview,view_xview+view_wview,view_yview+view_hview,x,y,RA[0]){
        DrawCircle(x,y,RA[0],16743936,16743936,.05,0,24,RA[0]-RA[1]);
        DrawCircle(x,y,RA[1],c_yellow,c_yellow,.05,.05,24,RA[1]-RA[2]);
        DrawCircle(x,y,RA[2],c_orange,c_orange,.05,.05,24,RA[2]);
    }
}
