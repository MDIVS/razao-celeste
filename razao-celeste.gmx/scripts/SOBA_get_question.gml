///SOBA_get_question( lvl, type )
var a;
if (argument1 == "Astronomia") {
    if (argument0 == 1) {
        //rotacao terrestre
        a[0] = choose(SOBA_000,SOBA_001,SOBA_002,SOBA_003,SOBA_004,SOBA_005,SOBA_006,SOBA_007,SOBA_008);
        
        //translação terrestre
        a[1] = choose(SOBA_010,SOBA_011,SOBA_012,SOBA_013,SOBA_014,SOBA_015,SOBA_016,SOBA_017);
        
        //lua terrestre
        a[2] = choose(SOBA_020,SOBA_021,SOBA_022,SOBA_023,SOBA_024,SOBA_025,SOBA_026,SOBA_027,SOBA_028);
        
        //sol
        a[3] = choose(SOBA_030,SOBA_031,SOBA_032,SOBA_033,SOBA_034);
        
        a[4] = OBA_ASTRONOMIA1_016;
        a[5] = OBA_ASTRONOMIA1_018;
        a[6] = OBA_ASTRONOMIA1_019;
        a[7] = OBA_ASTRONOMIA1_020;
    }
} else if argument1=="Astronáutica"{
    if argument0==1{
        a[0]=OBA_ASTRONAUTICA1_001;
        a[1]=OBA_ASTRONAUTICA1_002;
        a[2]=OBA_ASTRONAUTICA1_003;
        a[3]=OBA_ASTRONAUTICA1_004;
        a[4]=OBA_ASTRONAUTICA1_005;
        a[5]=OBA_ASTRONAUTICA1_006;
        a[6]=OBA_ASTRONAUTICA1_007;
        a[7]=OBA_ASTRONAUTICA1_008;
        a[8]=OBA_ASTRONAUTICA1_009;
        a[9]=OBA_ASTRONAUTICA1_010;
        a[10]=OBA_ASTRONAUTICA1_011;
        a[11]=OBA_ASTRONAUTICA1_012;
        a[12]=OBA_ASTRONAUTICA1_013;
    }
}

var i = irandom(array_length_1d(a)-1);
show_debug_message(i);
return(a[i]);
