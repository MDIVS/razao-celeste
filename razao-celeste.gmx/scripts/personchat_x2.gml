///personchat_x2( chat, new x2 ) | no needs argument to x2 return.

//get chat system
var a = argument[0];

//get x1, y1, x2 and y2 settings
var a0 = a[0];

if argument_count>1 {//if change is also solicited
    //get x1 difference
    var dif = a0[2]-a0[0];
    
    //change the x2
    a0[@2] = argument[1];
    
    //change the x1
    a0[@0] = a0[2]-dif;
}

//return the x2
return(a0[2]);
