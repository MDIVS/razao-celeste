///personchat_round( chat, new round ) | no needs argument to round return.

//get chat system
var a = argument[0];

//get width, height, border and round settings
var a1 = a[1];

if argument_count>1 {//if change is also solicited
    //change the round
    a1[@3] = argument[1];
}

//return the round
return(a1[3]);
