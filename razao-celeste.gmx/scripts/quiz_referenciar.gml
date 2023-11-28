///quiz_referenciar( text, link )
REF=1;
REF_text = argument[0];
if argument_count>1 REF_link=argument[1];

REF_x1 = 32;
REF_x2 = round(REF_x1+string_width(REF_text)+32);
REF_y2 = DH-16;
REF_y1 = round(REF_y2-string_height(REF_text)-32);
REF_xx = round(mean(REF_x1,REF_x2));
REF_yy = round(mean(REF_y1,REF_y2));
