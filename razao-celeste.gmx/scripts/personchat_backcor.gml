///personchat_backcor( chat, new backcor ) | no needs argument to backcor return.

//get chat system
var a = argument[0];

//get background, borders and text colour settings
var a3 = a[3];

if argument_count>1 {//if change is also solicited
    //change the backcor
    a3[@0] = argument[1];
}

//return the backcor
return(a3[0]);
