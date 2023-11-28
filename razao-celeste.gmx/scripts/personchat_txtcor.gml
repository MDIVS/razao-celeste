///personchat_txtcor( chat, new txtcor ) | no needs argument to txtcor return.

//get chat system
var a = argument[0];

//get background, borders and text colour settings
var a3 = a[3];

if argument_count>1 {//if change is also solicited
    //change the txtcor
    a3[@2] = argument[1];
}

//return the txtcor
return(a3[2]);
