writingx= 0;
writingy= 0;
SCR_TEXTTYPE(global.typer);
x= round(x);
y= round(y);
show_debug_message("Text Boot 0")
doak= 0;
stringno= 0;
stringpos= 1;
lineno= 0;
halt= 0;
writingx= round(writingx);
writingy= round(writingy);
myx= writingx;
myy= writingy;
script_execute(SCR_TEXT, global.msc);
show_debug_message(global.msc)
n= 0;
while(global.msg[n] != "%%%") {
    mystring[n]= global.msg[n];
    n++;
}
originalstring= mystring[0];
dfy= 0;
alarm[0]= textspeed;
show_debug_message("Text Boot 0")

