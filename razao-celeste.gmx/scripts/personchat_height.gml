///personchat_height( chat, new height ) | no needs argument to height return.

//get chat system
var a = argument[0];

//get width, height, border and round settings
var a1 = a[1];

if argument_count>1 {//if change is also solicited
    //adaptate the y1 and y2
        //get x1, y1, x2 and y2
        var a0 = a[0];
        
        //center = y1/2+y2/2
        var center = a0[1]/2+a0[3]/2;
        
        //adapte
        a0[@1] = center-argument[1]/2;
        a0[@3] = center+argument[1]/2;
    
    //change the height
    a1[@1] = argument[1];
}

//return the height
return(a1[1]);
