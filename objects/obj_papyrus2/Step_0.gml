if(conversation == 1) {
    fade= instance_create(0, 0, obj_musfadeout );
    fade.fadespeed= 0.5;
    global.currentsong= caster_load("music/papyrus.ogg");
    caster_loop(global.currentsong, 0.6, 1);
    myinteract= 3;
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 1;
    global.interact= 1;
    global.msg[0]= "YOU\\'RE SO&LAZY!!/";
    global.msg[1]= "YOU WERE&NAPPING&ALL NIGHT!!/";
    scr_sansface(2, 0);
    global.msg[3]= "* i think that\\'s called.../";
    global.msg[4]= "\\\\E1* sleeping./";
    scr_papface(5, 1);
    global.msg[6]= "EXCUSES^1,&EXCUSES!/%%";
    ini_open("undertale.ini");
    M1= ini_read_real("Papyrus", "M1", 0);
    ini_close();
    if(M1 > 1) {
        global.msg[0]= "REALLY THOUGH!!^1!&THAT HUMAN!!!/";
        global.msg[1]= "\\\\E2DO I KNOW THAT&PERSON???/";
        scr_sansface(2, 0);
        global.msg[3]= "* do you not know.../";
        global.msg[4]= "\\\\E1* who you know?/";
        scr_papface(5, 0);
        global.msg[6]= "PBPBPPBPT!!/";
        global.msg[7]= "OF COURSE I KNOW&WHO I KNOW!!/";
        global.msg[8]= "I WANTED TO KNOW IF&YOU KNOW.../";
        global.msg[9]= "I KNOW WHO I KNOW&AS MUCH AS I KNOW&I KNOW WHO I KNOW!/";
        global.msg[10]= "\\\\E2...YOU KNOW?/%%";
    }
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 2;
}
if(conversation == 2 && !instance_exists(OBJ_WRITER )) {
    conversation= 3;
    papyrus.sprite_index= papyrus.ltsprite;
    sans.sprite_index= sans.ltsprite;
    xxblcon= instance_create(papyrus.x + 3, papyrus.y - 12, obj_cosmeticblcon );
    alarm[0]= 45;
    if(murder == 1) {
        alarm[0]= -1;
        alarm[3]= 45;
        x= 400;
        conversation= 49;
    }
}
if(conversation == 4) {
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 0;
    global.interact= 1;
    global.msg[0]= "OH-HO^1!&THE HUMAN&ARRIVES!/";
    if(M1 > 1) global.msg[0]= "OH-HO^1!&SPEAK OF THE DEVIL!/";
    global.msg[1]= "IN ORDER TO&STOP YOU^1.../";
    global.msg[2]= "MY BROTHER AND&I HAVE CREATED&SOME PUZZLES!/";
    global.msg[3]= "I THINK YOU&WILL FIND&THIS ONE.../";
    global.msg[4]= "\\\\E2QUITE&SHOCKING!!!/";
    global.msg[5]= "\\\\E0FOR YOU SEE^1,&THIS IS THE&INVISIBLE.../";
    global.msg[6]= "ELECTRICITY&MAZE!!!/";
    global.msg[7]= "WHEN YOU TOUCH&THE WALLS OF&THIS MAZE,/";
    global.msg[8]= "THIS ORB WILL&ADMINISTER A&HEARTY ZAP!/";
    global.msg[9]= "\\\\E2SOUND LIKE&FUN???/";
    global.msg[10]= "BECAUSE!/";
    global.msg[11]= "THE AMOUNT OF&FUN YOU WILL&PROBABLY HAVE,/";
    global.msg[12]= "\\\\E3IS ACTUALLY&RATHER SMALL&I THINK./";
    global.msg[13]= "\\\\E0OK^1, YOU CAN&GO AHEAD NOW./%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 6;
}
if(conversation == 6 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno > 7)
    papyrus.sprite_index= spr_papyrus_orb ;
if(conversation == 6 && !instance_exists(OBJ_WRITER )) {
    instance_create(10, 0, obj_puzzlewall1 );
    papyrus.sprite_index= papyrus.ltsprite;
    sans.sprite_index= sans.ltsprite;
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.Object, 0, -4 );
    conversation= 7;
    x+= 20;
    global.interact= 0;
    solid= 0;
}
if(conversation == 8 && !instance_exists(OBJ_WRITER )) {
    global.interact= 1;
    conversation= 9;
    papyrus.fun= 1;
    snd_play(snd_shock );
    papyrus.sprite_index= spr_papyrus_electrocute ;
    papyrus.image_speed= 0.5;
    alarm[1]= 30;
}
if(conversation == 9) {
    ggg= floor(random(6) - 2);
    papyrus.x= papyrus.xstart + ggg;
    ggg= floor(random(6) - 2);
    papyrus.y= papyrus.ystart + ggg;
}
if(conversation == 10) {
    papyrus.x= papyrus.xstart;
    papyrus.y= papyrus.ystart;
    papyrus.sprite_index= spr_papyrus_toasted ;
    papyrus.image_speed= 0.2;
    alarm[1]= 60;
    conversation= 11;
}
if(conversation == 12) {
    sans.sprite_index= sans.dtsprite;
    papyrus.sprite_index= spr_papyrus_mad1 ;
    papyrus.image_speed= 0.33334;
    global.faceemotion= 1;
    global.msc= 0;
    global.msg[0]= "SANS!!^1!&WHAT DID YOU&DO?!?!/%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 13;
}
if(conversation == 13 && !instance_exists(OBJ_WRITER )) {
    papyrus.fun= 0;
    papyrus.sprite_index= papyrus.utsprite;
    papyrus.image_speed= 0;
    global.faceemotion= 1;
    global.facechoice= 3;
    global.typer= 17;
    global.msg[0]= "* i think the human&  has to hold the orb./%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 14;
}
if(conversation == 14 && !instance_exists(OBJ_WRITER )) {
    papyrus.sprite_index= papyrus.ltsprite;
    papyrus.image_speed= 0;
    global.faceemotion= 0;
    global.facechoice= 4;
    global.typer= 19;
    global.msg[0]= "OH^1, OKAY./%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 15;
}
if(conversation == 15 && !instance_exists(OBJ_WRITER )) {
    sans.sprite_index= sans.ltsprite;
    papyrus.npcdir= 1;
    papyrus.image_index= 0;
    papyrus.image_speed= 0.2;
    crunchybunchy= 0;
    with(papyrus) path_start(path_papyrus1 , 2, 0, path_action_stop );
    conversation= 16;
}
if(conversation == 16 && instance_exists(obj_papyrus_actor )) {
    stepmake= 0;
    crunchybunchy+= 0.5;
    if(crunchybunchy == 1) stepmake= 1;
    if(crunchybunchy == 3) stepmake= 1;
    if(crunchybunchy == 4) crunchybunchy= 0;
    if(stepmake == 1 && papyrus.x < papyrus.xstart - 10)
        instance_create(papyrus.x, papyrus.y, obj_papyrussteps );
}
if(conversation == 16 && instance_exists(obj_papyrus_actor ) && papyrus.path_position == 1) {
    papyrus.npcdir= 0;
    papyrus.sprite_index= spr_papyrus_orb ;
    global.msg[0]= "HOLD THIS PLEASE!/%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 16.5;
}
if(conversation == 16.5 && !instance_exists(OBJ_WRITER )) {
    alarm[1]= 30;
    papyrus.sprite_index= spr_papyrus_orbtoss ;
    instance_create(papyrus.x + 1, papyrus.y + 1, obj_orbhead );
    conversation= 17;
}
if(conversation == 18) {
    papyrus.npcdir= 1;
    papyrus.image_speed= 0.2;
    with(papyrus) path_start(path_papyrus1A , 5, 0, path_action_stop );
    conversation= 19;
}
if(conversation == 19 && instance_exists(obj_papyrus_actor ) && papyrus.path_position == 1) {
    papyrus.npcdir= 0;
    alarm[1]= 30;
    conversation= 20;
    papyrus.sprite_index= papyrus.ltsprite;
    papyrus.image_speed= 0;
    global.faceemotion= 0;
    global.facechoice= 4;
    global.typer= 19;
    global.msg[0]= "OKAY^1, TRY NOW!/%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 20;
}
if(conversation == 20 && !instance_exists(OBJ_WRITER )) {
    x= 248;
    global.interact= 0;
    conversation= 21;
}
if(conversation == 22) {
    global.interact= 1;
    global.msc= 0;
    papyrus.sprite_index= papyrus.dtsprite;
    sans.sprite_index= sans.dtsprite;
    global.faceemotion= 0;
    global.facechoice= 4;
    global.typer= 19;
    global.msg[0]= "\\\\E1INCREDIBLE!!&YOU SLIPPERY&SNAIL!!/";
    global.msg[1]= "\\\\E3YOU SOLVED IT&SO EASILY..^1.&TOO EASILY!/";
    global.msg[2]= "\\\\E0HOWEVER!!/";
    global.msg[3]= "THE NEXT&PUZZLE WILL&NOT BE EASY!/";
    global.msg[4]= "IT IS DESIGNED&BY MY BROTHER^1,&SANS!/";
    global.msg[5]= "YOU WILL&SURELY BE&CONFOUNDED!/";
    global.msg[6]= "I KNOW I AM!/";
    global.msg[7]= "NYEH HEH HEH&HEH HEH!!/%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 23;
}
if(conversation == 23) global.interact= 1;
if(conversation == 23 && !instance_exists(OBJ_WRITER )) {
    if(instance_exists(obj_orbhead )) {
        // obj_orbhead
        with(995) instance_destroy();
    }
    // obj_shockblock
    with(994) instance_destroy();
    papyrus.hspeed= 5;
    papyrus.sprite_index= papyrus.lsprite;
    papyrus.image_speed= 0.2;
    hhh= instance_create(0, 0, obj_musfadeout );
    hhh.fadespeed= 0.05;
    alarm[1]= 30;
    conversation= 24;
}
if(conversation == 25) {
    global.currentsong= caster_load("music/snowy.ogg");
    caster_loop(global.currentsong, 1, 0.95);
    if(murder == 1) caster_set_pitch(global.currentsong, 0.5);
    global.plot= 43;
    global.interact= 0;
    if(instance_exists(obj_puzzlewall1 )) {
        // obj_puzzlewall1
        with(1007) instance_destroy();
    }
    instance_create(sans.x, sans.y, obj_sans_room );
    with(sans) instance_destroy();
    with(papyrus) instance_destroy();
    instance_destroy();
}
if(conversation == 50) {
    mc= scr_marker(obj_mainchara.x, obj_mainchara.y, 1045);
    // obj_mainchara
    with(1570) visible= 0;
    with(mc) scr_depth();
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 0;
    global.interact= 1;
    global.msg[0]= "OH-HO^1!&THE HUMAN&ARRIVES!/";
    global.msg[1]= "IN ORDER TO&STOP YOU^1.../";
    global.msg[2]= "MY BROTHER AND&I HAVE CREATED&SOME PUZZLES!/";
    global.msg[3]= "I THINK YOU&WILL FIND&THIS ONE.../";
    global.msg[4]= "\\\\E2QUITE&SHOCKING!!!/";
    global.msg[5]= "\\\\E5FOR YOU SEE^1,&THIS IS..^1.&THE^1, INVISIBLE.../%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 51;
}
if(conversation == 51 && !instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 4) {
        mc.hspeed= 3;
        mc.image_speed= 0.25;
    }
    if(mc.x >= 158) {
        mc.x= 160;
        mc.hspeed= 0;
        mc.image_index= 0;
        mc.image_speed= 0;
    }
}
if(conversation == 51 && !instance_exists(OBJ_WRITER ) && mc.x >= 158) {
    mc.x= 160;
    mc.hspeed= 0;
    mc.image_index= 0;
    mc.image_speed= 0;
    conversation= 52;
    alarm[3]= 50;
}
if(conversation == 53) {
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 3;
    global.interact= 1;
    global.msg[0]= "\\\\E5UHHHHHHH...?/";
    global.msg[1]= "\\\\E3HMMM..^1. YOU MUST&BE HAVING&CULTURE SHOCK./";
    global.msg[2]= "\\\\E0YOU SEE^1, WHERE I&COME FROM^1, IT\\'S&A LOVING TRADITION./";
    global.msg[3]= "TO SUFFER THROUGH&HORRIBLE PUZZLES&FOR NO REASON./";
    global.msg[4]= "\\\\E5SO^1, UH^1, JUST&WALK BACK THERE^1,&AND.../";
    global.msg[5]= ".../%%";
    instance_create(0, 0, obj_dialoguer );
    conversation= 54;
}
if(conversation == 54 && !instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 4) {
        mc.hspeed= 3;
        mc.image_speed= 0.25;
    }
    if(mc.x >= 218) {
        mc.x= 220;
        mc.hspeed= 0;
        mc.image_index= 0;
        mc.image_speed= 0;
    }
}
if(conversation == 54 && !instance_exists(OBJ_WRITER ) && mc.x >= 218) {
    mc.x= 220;
    mc.hspeed= 0;
    mc.image_index= 0;
    mc.image_speed= 0;
    conversation= 55;
    alarm[3]= 50;
}
if(conversation == 56) {
    global.flag[291]= 1;
    global.interact= 1;
    global.msc= 0;
    papyrus.sprite_index= papyrus.dtsprite;
    sans.sprite_index= sans.dtsprite;
    global.faceemotion= 0;
    global.facechoice= 4;
    global.typer= 19;
    global.msg[0]= "\\\\E3SIGH.../";
    global.msg[1]= "\\\\E3WHY COULDN\\'T WE GET&A HUMAN THAT LIKES&PUZZLES???/%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 57;
}
if(conversation == 57 && !instance_exists(OBJ_WRITER )) {
    if(instance_exists(obj_orbhead )) {
        // obj_orbhead
        with(995) instance_destroy();
    }
    // obj_shockblock
    with(994) instance_destroy();
    papyrus.hspeed= 5;
    papyrus.sprite_index= papyrus.rsprite;
    papyrus.image_speed= 0.2;
    hhh= instance_create(0, 0, obj_musfadeout );
    hhh.fadespeed= 0.05;
    alarm[3]= 30;
    conversation= 58;
}
if(conversation == 59) {
    obj_mainchara.x= mc.x;
    obj_mainchara.y= mc.y;
    global.facing= 0;
    with(mc) instance_destroy();
    obj_mainchara.visible= 1;
    global.currentsong= caster_load("music/snowy.ogg");
    caster_loop(global.currentsong, 1, 0.95);
    if(murder == 1) caster_set_pitch(global.currentsong, 0.5);
    global.plot= 43;
    global.interact= 0;
    if(instance_exists(obj_puzzlewall1 )) {
        // obj_puzzlewall1
        with(1007) instance_destroy();
    }
    instance_create(sans.x, sans.y, obj_sans_room );
    with(sans) instance_destroy();
    with(papyrus) instance_destroy();
    instance_destroy();
}

/* */
/*  */
