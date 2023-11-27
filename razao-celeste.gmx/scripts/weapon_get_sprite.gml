///weapon_get_sprite( weapon )
switch(argument0) {
    case ascr_fuzil: return(aspr_fuzil);
    case ascr_mousefuzil: return(aspr_fuzil);
    case ascr_laser: return(aspr_laser);
    case ascr_shield: return(aspr_shield);
    default: return(aspr_none);
}
