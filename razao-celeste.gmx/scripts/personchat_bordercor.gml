///personchat_bordercor( chat, new bordercor ) | no needs argument to bordercor return.

//get chat system
var a = argument[0];

//get background, borders and text colour settings
var a3 = a[3];

if argument_count>1 {//if change is also solicited
    //change the bordercor
    a3[@1] = argument[1];
}

//return the bordercor
return(a3[1]);
