///personchat_x1( chat, new x1 ) | no needs argument to x1 return.

//get chat system
var a = argument[0];

//get x1, y1, x2 and y2 settings
var a0 = a[0];

if argument_count>1 {//if change is also solicited
    //get x2 difference
    var dif = a0[2]-a0[0];
    
    //change the x1
    a0[@0] = argument[1];
    
    //change the x2
    a0[@2] = a0[0]+dif;
}

//return the x1
return(a0[0]);
