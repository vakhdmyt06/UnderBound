if(con == 1) {
    global.flag[20]= 0;
    alphys= instance_create(obj_slidingdoor.x + 10, obj_slidingdoor.y + 5, obj_alphys_actor );
    alphys.d= 1;
    alphys.depth= obj_slidingdoor.depth + 1;
    lab= caster_load("music/lab.ogg");
    smash= caster_load("music/mettsmash.ogg");
    gameshow= caster_load("music/mtgameshow.ogg");
    instance_create(0, 0, obj_musfadeout );
    obj_mainchara.cutscene= 1;
    con= 2;
    alarm[4]= 50;
}
if(con == 2) __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (2) );
if(con == 3) {
    con= 4;
    alarm[4]= 30;
}
if(con == 5) {
    // obj_slidingdoor
    with(1291) event_user(0);
    con= 6;
    alarm[4]= 15;
}
if(con == 7) {
    alphys.d= 0;
    alphys.vspeed= 2;
    con= 8;
    alarm[4]= 15;
}
if(con == 9) {
    // obj_slidingdoor
    with(1291) event_user(1);
    con= 10;
}
if(con == 10 && alphys.y >= obj_mainchara.y - 4) {
    con= 11;
    alarm[4]= 60;
    alphys.vspeed= 0;
    alphys.image_speed= 0;
}
if(con == 12) {
    snd_play(snd_noise );
    // obj_labdarkness
    with(1304) instance_destroy();
    con= 13;
    alarm[4]= 80;
}
if(con == 14) {
    alphys.sprite_index= alphys.lsprite;
    alphys.direction= 180;
    alphys.speed= 3;
    con= 15;
    alarm[4]= 25;
}
if(con == 16) {
    alphys.speed= 0;
    blc= instance_create(alphys.x, alphys.y - 6, obj_cosmeticblcon );
    snd_play(snd_b );
    con= 17;
    alarm[4]= 60;
}
if(con == 18) {
    with(blc) instance_destroy();
    alphys.fun= 1;
    alphys.sprite_index= spr_alphys_freaked ;
    global.facechoice= 6;
    global.faceemotion= 3;
    global.typer= 47;
    global.msc= 0;
    global.msg[0]= "* Oh^1.&* My god./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 19;
}
if(con == 19 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= "* I didn\\'t expect you&  to show up so&  soon!/";
    global.msg[1]= "* I haven\\'t showered^1, I\\'m&  barely dressed^1, it\\'s&  all messy^1, and.../%%";
    instance_create(0, 0, obj_dialoguer );
    con= 20;
    alphys.sprite_index= alphys.lsprite;
    alphys.image_speed= 0.334;
}
if(con == 20) {
    looktimer++;
    if(looktimer > 8) {
        rr= floor(random(4));
        if(rr == 0) alphys.sprite_index= alphys.lsprite;
        if(rr == 1) alphys.sprite_index= alphys.rsprite;
        if(rr == 2) alphys.sprite_index= alphys.usprite;
        if(rr == 3) alphys.sprite_index= alphys.dsprite;
        looktimer= 0;
    }
}
if(con == 20 && !instance_exists(OBJ_WRITER )) {
    con= 21;
    alarm[4]= 100;
}
if(con == 21)
    alphys.image_speed-= 0.0033;
if(con == 22) {
    alphys.image_index= 0;
    alphys.sprite_index= alphys.ltsprite;
    alphys.fun= 0;
    con= 23;
    alarm[4]= 50;
}
if(con == 24) {
    con= 25;
    caster_loop(lab, 1, 1);
    labvolume= 1;
    global.faceemotion= 0;
    global.msg[0]= "* Ummm.../";
    global.msg[1]= "* H-h-hiya!/";
    global.msg[2]= "* I\\'m Dr. Alphys^1.&* I\\'m ASGORE\\'s royal&  scientist!/";
    global.msg[3]= "\\\\E3* B-b-but^1, ahhhh^1,&  I\\'m not one of&  the " + chr(ord("\"")) + "bad guys" + chr(ord("\"")) + "!/";
    global.msg[4]= "\\\\E0* Actually^1, since you&  stepped out of the&  RUINS^1, I\\'ve^1, um.../";
    global.msg[5]= "\\\\E7* ... been " + chr(ord("\"")) + "observing" + chr(ord("\"")) + "&  your journey through&  my console./";
    global.msg[6]= "\\\\E3* Your fights..^1.&* Your friendships..^1.&* Everything!/";
    global.msg[7]= "\\\\E0* I was originally&  going to stop&  you^1, but.../";
    ini_open("undertale.ini");
    ad= ini_read_real("Alphys", "AD", 0);
    ini_close();
    global.msg[8]= "\\\\E7* Watching someone on&  a screen really makes&  you root for them./";
    if(ad > 0)
        global.msg[8]= "\\\\E7* Watching you^1, I felt&  like..^1. like I was&  seeing an old friend./";
    global.msg[9]= "\\\\E0* S-so^1, ahhh^1, now I&  want to help you!/";
    global.msg[10]= "\\\\E6* Using my knowledge^1,&  I can easily guide&  you through Hotland!/";
    global.msg[11]= "\\\\E0* I know a way right&  to ASGORE\\'s castle^1,&  no problem!/";
    global.msg[12]= "\\\\E2* .../";
    global.msg[13]= "\\\\E7* Well^1, actually^1, umm^1,&  there\\'s just a&  tiny issue./";
    global.msg[14]= "\\\\E0* A long time ago^1, I&  made a robot named&  Mettaton./";
    global.msg[15]= "* Originally^1, I built&  him to be an&  entertainment robot./";
    global.msg[16]= "\\\\E7* Uh^1, you know^1, like&  a robotic TV star&  or something./";
    global.msg[17]= "\\\\E0* Anyway^1, recently I&  decided to make him&  more useful./";
    global.msg[18]= "\\\\E7* You know^1, just some&  small practical&  adjustments./";
    global.msg[19]= "\\\\E0* Like^1, um.../";
    global.msg[20]= "\\\\E4* Anti..^1. anti-human&  combat features?/";
    global.msg[21]= "\\\\E6* Of c-course^1, when I&  saw you coming^1, I&  immediately decided.../";
    global.msg[22]= "\\\\E3* I have to remove&  those features!/";
    global.msg[23]= "\\\\E4* Unfortunately^1, I may&  have made a teensy&  mistake while doing so./";
    global.msg[24]= "* And^1, um.../";
    global.msg[25]= "\\\\E5* Now he\\'s an unstoppable&  killing machine with a&  thirst for human blood?/";
    global.msg[26]= "* Ehehehehe.../";
    global.msg[27]= "\\\\E8* Heh./";
    global.msg[28]= "\\\\E0* But^1, ummm^1, hopefully&  we won\\'t run into&  him!/%%";
    instance_create(0, 0, obj_dialoguer );
}
if(con == 25 && !instance_exists(OBJ_WRITER )) {
    labvolume-= 0.03;
    caster_set_volume(lab, labvolume);
    if(labvolume <= 0) {
        con= 26;
        alarm[4]= 60;
        caster_stop(lab);
    }
}
if(con == 27) {
    scr_shake(2, 2, 2);
    caster_play(smash, 0.25, 1);
    scr_bouncer(alphys, 2, 0.8);
    scr_bouncer(1570, 2, 0.8);
    con= 28;
    alarm[4]= 30;
}
if(con == 29) {
    global.faceemotion= 1;
    global.msg[0]= "* ...?/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 30;
}
if(con == 30 && !instance_exists(OBJ_WRITER )) {
    con= 31;
    alarm[4]= 30;
}
if(con == 32) {
    scr_shake(3, 3, 2);
    caster_play(smash, 0.4, 1);
    scr_bouncer(alphys, 3, 1);
    scr_bouncer(1570, 3, 1);
    con= 33;
    alarm[4]= 30;
}
if(con == 34) {
    global.faceemotion= 0;
    global.msg[0]= "* Did you hear&  something?/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 35;
}
if(con == 35 && !instance_exists(OBJ_WRITER )) {
    con= 36;
    alarm[4]= 30;
    smashamt= 0;
}
if(con == 37) {
    caster_play(smash, 0.5 + smashamt, 1);
    scr_shake(3, 3, 2);
    scr_bouncer(alphys, 4, 1);
    scr_bouncer(1570, 4, 1);
    con= 38;
    alarm[4]= 30;
}
if(con == 39) {
    con= 37;
    smashamt+= 0.1;
    if(smashamt > 0.4) con= 40;
}
if(con == 40) {
    global.faceemotion= 3;
    global.msg[0]= "* Oh no./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 41;
}
if(con == 41 && !instance_exists(OBJ_WRITER )) {
    con= 42;
    alarm[4]= 20;
}
if(con == 43) {
    snd_play(snd_laz );
    wht= instance_create(0, 0, obj_whitesploder );
    con= 44;
    alarm[4]= 40;
}
if(con == 45) {
    blk= instance_create(__view_get( e__VW.XView, 0 ) - 2, -2, obj_npc_marker );
    blk.depth= wht.depth - 2;
    blk.image_alpha= 0;
    blk.visible= 1;
    blk.image_speed= 0;
    blk.sprite_index= spr_pixblk ;
    blk.image_xscale= 200;
    blk.image_yscale= 200;
    con= 46;
}
if(con == 46) {
    cheer= caster_load("music/mett_cheer.ogg");
    clap= caster_load("music/mett_applause.ogg");
    blk.image_alpha+= 0.02;
    if(blk.image_alpha >= 1) {
        con= 47;
        alarm[4]= 30;
    }
}
if(con == 48) {
    with(wht) instance_destroy();
    global.typer= 27;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msc= 0;
    obj_mainchara.y= 120;
    alphys.y= 120;
    global.msg[0]= "* OHHHH YES!/";
    global.msg[1]= "* WELCOME^1, BEAUTIES.../%%";
    con= 49;
    global.facing= 2;
    alphys.sprite_index= alphys.usprite;
    instance_create(0, 0, obj_dialoguer );
    mett= instance_create(760, 60, obj_mettaton_actor );
    mett.image_speed= 0;
    obj_mettwallhole.visible= 1;
    gamesign= instance_create(720, -40, obj_npc_marker );
    gamesign.sprite_index= spr_gameshowlogo ;
    gamesign.depth= 14;
    gamesign.image_speed= 0.2;
    gamesign.visible= 1;
}
if(con == 49 && !instance_exists(OBJ_WRITER )) {
    con= 50;
    alarm[4]= 20;
}
if(con == 51) {
    snd_play(snd_drumroll );
    con= 52;
    alarm[4]= 50;
}
if(con == 53) {
    with(blk) instance_destroy();
    snd_play(snd_bell );
    shadow= instance_create(__view_get( e__VW.XView, 0 ), 0, obj_npc_marker );
    shadow.image_speed= 0;
    shadow.visible= 1;
    shadow.image_alpha= 1;
    shadow.sprite_index= spr_statueshadow ;
    shadow.depth= 15;
    mett.d= 1;
    mett.depth= 10;
    con= 54;
    alarm[4]= 30;
}
if(con == 55) {
    mett.image_speed= 0.2;
    global.msg[0]= "\\\\M1* ... TO TODAY\\'S QUIZ SHOW!!!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 56;
}
if(con == 56 && !instance_exists(OBJ_WRITER )) {
    caster_play(cheer, 1, 1);
    caster_loop(gameshow, 1, 1);
    shadow.image_alpha= 0.95;
    dball= instance_create(__view_get( e__VW.XView, 0 ) + 60, -30, obj_discoball );
    obj_discoball.depth= 13;
    con= 57;
}
if(con == 57) {
    repeat(2) 
        instance_create(__view_get( e__VW.XView, 0 ) + random(320), __view_get( e__VW.YView, 0 ) - 10, obj_confetti );
    if(gamesign.y < gamesign.ystart + 40)
        gamesign.y++;
    shadow.image_alpha-= 0.005;
    if(shadow.image_alpha < 0.7) con= 58;
}
if(con == 58) {
    global.msg[0]= "\\\\M0* OH BOY^1!&* I CAN ALREADY TELL IT\\'S&  GONNA BE A GREAT SHOW!/";
    global.msg[1]= "\\\\M2* EVERYONE GIVE A BIG&  HAND FOR OUR WONDERFUL&  CONTESTANT!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 59;
}
if(con == 59 && !instance_exists(OBJ_WRITER )) {
    caster_play(clap, 1, 1);
    mett.image_speed= 0.5;
    global.flag[20]= 3;
    con= 60;
    alarm[4]= 90;
}
if(con == 60) {
    conf= instance_create(obj_mainchara.x + random(20), __view_get( e__VW.YView, 0 ) - 10, obj_confetti );
    conf.hspeed= -1 + random(2);
}
if(con == 61) {
    mett.image_speed= 0.2;
    global.msg[0]= "\\\\M0* NEVER PLAYED BEFORE^1,&  GORGEOUS?/";
    global.msg[1]= "\\\\M2* NO PROBLEM^1!&* IT\\'S SIMPLE!/";
    global.msg[2]= "\\\\M4* THERE\\'S ONLY ONE&  RULE./";
    global.msg[3]= "* ANSWER CORRECTLY.../%%";
    instance_create(0, 0, obj_dialoguer );
    con= 63;
}
if(con == 63 && !instance_exists(OBJ_WRITER )) {
    mett.image_speed= 0;
    snd_play(snd_drumroll );
    con= 64;
    alarm[4]= 60;
}
if(con == 65) {
    caster_free(-3);
    global.flag[20]= 5;
    mett.image_speed= 0.25;
    global.msg[0]= "* OR YOU DIE!!!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 66;
}
if(con == 66 && !instance_exists(OBJ_WRITER )) {
    if(instance_exists(obj_confetti )) {
        // obj_confetti
        with(109) instance_destroy();
    }
    active= 0;
    speed= 0;
    global.interact= 1;
    caster_free(-3);
    con= 67;
    alarm[4]= 10;
    global.border= 0;
    global.battlegroup= 48;
    global.mercy= 1;
    instance_create(0, 0, obj_battler );
    talkedto= 0;
}
if(con == 68) {
    with(mett) instance_destroy();
    with(shadow) instance_destroy();
    // obj_discoball
    with(1284) instance_destroy();
    with(gamesign) instance_destroy();
    con= 68.1;
    global.interact= 1;
    alarm[4]= 14;
}
if(con == 69.1 && !instance_exists(obj_battler )) {
    global.mercy= 0;
    global.interact= 1;
    global.currentsong= caster_load("music/lab.ogg");
    con= 70;
    alarm[4]= 20;
}
if(con == 70) global.interact= 1;
if(con == 71) {
    global.flag[462]= 0;
    alphys.sprite_index= alphys.lsprite;
    global.msg[0]= "* .../";
    global.msg[1]= "\\\\E0* Well that was&  certainly something./%%";
    global.typer= 47;
    global.facechoice= 6;
    global.faceemotion= 1;
    global.msc= 0;
    instance_create(0, 0, obj_dialoguer );
    con= 72;
}
if(con == 72 && !instance_exists(OBJ_WRITER )) {
    alphys2= instance_create(alphys.x, alphys.y, obj_alphys_npc );
    with(alphys) instance_destroy();
    con= 73;
    alarm[4]= 50;
}
if(con == 73) {
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (2) );
    global.interact= 1;
}
if(con == 74) {
    caster_loop(global.currentsong, 1, 1);
    obj_mainchara.cutscene= 0;
    global.interact= 0;
    con= 75;
    global.plot= 126;
    instance_destroy();
}


/*  */
