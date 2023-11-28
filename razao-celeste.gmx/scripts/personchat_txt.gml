///personchat_txt( chat, new txt ) | no needs argument to txt return.

//get chat system
var a = argument[0];

//get txt and count settings
var a2 = a[2];

if argument_count>1 {//if change is also solicited
    //change the txt and 
    a2[@0] = argument[1];
    a2[@1] = 0;
}

//return the txt
return(a2[0]);
