///choose_planet( obj planet, operation )
switch(argument0) {
    case obj_Mercurio: if (argument1 == 1) {return(obj_Venus)} else {return(obj_Netuno)}; break;
    case obj_Venus: if (argument1 == 1) {return(obj_Terra)} else {return(obj_Mercurio)}; break;
    case obj_Terra: if (argument1 == 1) {return(obj_Marte)} else {return(obj_Venus)}; break;
    case obj_Marte: if (argument1 == 1) {return(obj_Jupiter)} else {return(obj_Terra)}; break;
    case obj_Jupiter: if (argument1 == 1) {return(obj_Saturno)} else {return(obj_Marte)}; break;
    case obj_Saturno: if (argument1 == 1) {return(obj_Urano)} else {return(obj_Jupiter)}; break;
    case obj_Urano: if (argument1 == 1) {return(obj_Netuno)} else {return(obj_Saturno)}; break;
    case obj_Netuno: if (argument1 == 1) {return(obj_Mercurio)} else {return(obj_Urano)}; break;
}
