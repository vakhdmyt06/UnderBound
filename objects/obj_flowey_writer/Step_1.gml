myletter= string_char_at(originalstring, stringpos);
if(shake > 38) {
    speed= 2;
    direction+= 20;
}
if(shake == 42) {
    speed= 4;
    direction-= 19;
}
if(halt == 3 || dfy == 1) instance_destroy();

