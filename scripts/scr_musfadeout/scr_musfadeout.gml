function scr_musfadeout(argument0) {
	g= instance_create(0, 0, obj_musfadeout );
	if(argument0 == 0) argument0= 0.05;
	g.fadespeed= argument0;



}
