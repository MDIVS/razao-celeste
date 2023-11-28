///personchat_y2( chat, new y2 ) | no needs argument to y2 return.

//get chat system
var a = argument[0];

//get x1, y1, x2 and y2 settings
var a0 = a[0];

if argument_count>1 {//if change is also solicited
    //get y1 difference
    var dif = a0[3]-a0[1];
    
    //change the y2
    a0[@3] = argument[1];
    
    //change the y1
    a0[@1] = a0[3]-dif;
}

//return the y1
return(a0[3]);
