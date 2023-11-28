///personchat_width( chat, new width ) | no needs argument to width return.

//get chat system
var a = argument[0];

//get width, height, border and round settings
var a1 = a[1];

if argument_count>1 {//if change is also solicited
    //adaptate the x1 and x2
        //get x1, y1, x2 and y2
        var a0 = a[0];
        
        //center = x1/2+x2/2
        var center = a0[0]/2+a0[2]/2;
        
        //adapte
        a0[@0] = center-argument[1]/2;
        a0[@2] = center+argument[1]/2;
    
    //change the width
    a1[@0] = argument[1];
}

//return the width
return(a1[0]);
