///personchat_border( chat, new border ) | no needs argument to border return.

//get chat system
var a = argument[0];

//get width, height, border and round settings
var a1 = a[1];

if argument_count>1 {//if change is also solicited
    //change the border
    a1[@2] = argument[1];
}

//return the border
return(a1[2]);
