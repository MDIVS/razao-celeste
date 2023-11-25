///SOBA_get_question( lvl, type )
var a;
if (argument1 == "Astronomia") {
    if (argument0 == 1) {
        a[0] = OBA_ASTRONOMIA1_001;
        a[1] = OBA_ASTRONOMIA1_002;
        a[2] = OBA_ASTRONOMIA1_003;
        a[3] = OBA_ASTRONOMIA1_004;
        a[4] = OBA_ASTRONOMIA1_005;
        a[5] = OBA_ASTRONOMIA1_006;
        a[6] = OBA_ASTRONOMIA1_007;
        a[7] = OBA_ASTRONOMIA1_008;
        a[8] = OBA_ASTRONOMIA1_009;
        a[9] = OBA_ASTRONOMIA1_010;
        a[10] = OBA_ASTRONOMIA1_011;
        a[11] = OBA_ASTRONOMIA1_012;
        a[12] = OBA_ASTRONOMIA1_013;
        a[13] = OBA_ASTRONOMIA1_014;
        a[14] = OBA_ASTRONOMIA1_015;
        a[15] = OBA_ASTRONOMIA1_016;
        a[16] = OBA_ASTRONOMIA1_017;
        a[17] = OBA_ASTRONOMIA1_018;
        a[18] = OBA_ASTRONOMIA1_019;
        a[19] = OBA_ASTRONOMIA1_020;
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
