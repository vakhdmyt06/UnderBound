if(con == 1) {
    mkid= instance_create(__view_get( e__VW.XView, 0 ) - 40, obj_mainchara.y, obj_mkid_actor );
    mkid.image_speed= 0;
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.Object, 0, -4 );
    mkid.sprite_index= mkid.rsprite;
    con= 0.1;
    alarm[4]= 2;
    vol= caster_get_volume(global.currentsong);
    vol2= vol;
}
if(con == 1.1) {
    con= 0.2;
    alarm[4]= 2;
}
if(con == 1.2) {
    con= 1.3;
    global.msg[0]= "* Yo!/%%";
    scr_regulartext();
}
if(con == 1.3 && !instance_exists(OBJ_WRITER )) {
    con= 2;
    alarm[4]= 50;
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    if(vol > 0) vol-= 0.02;
    caster_set_volume(global.currentsong, vol);
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (2) );
}
if(con == 3) {
    global.facing= 3;
    caster_pause(global.currentsong);
    mkid.image_speed= 0.2;
    mkid.hspeed= 1;
    con= 4;
    alarm[4]= 20;
    if(global.tempvalue[13] == 1) {
        alarm[4]= 50;
        con= 13;
        mkid.image_speed= 0.25;
        mkid.hspeed= 3;
        mkid.sprite_index= mkid.rsprite;
    }
}
if(con == 5) {
    mkid.hspeed= 0;
    mkid.image_speed= 0;
    mkid.image_index= 0;
    con= 6;
    alarm[4]= 50;
}
if(con == 7) {
    mkid.hspeed= 1;
    mkid.image_speed= 0.2;
    con= 8;
    alarm[4]= 130;
}
if(con == 9) {
    mkid.hspeed= 0;
    mkid.image_speed= 0;
    mkid.image_index= 0;
    con= 10;
    alarm[4]= 30;
}
if(con == 10) {
    mkid.sprite_index= mkid.dtsprite;
    con= 11;
    alarm[4]= 30;
}
if(con == 12) {
    mkid.sprite_index= mkid.rtsprite;
    con= 13;
    alarm[4]= 40;
}
if(con == 14) {
    mkid.hspeed= 0;
    mkid.image_speed= 0;
    mkid.image_index= 0;
    mkid.sprite_index= mkid.rtsprite;
    global.msc= 623;
    global.typer= 5;
    global.facechoice= 0;
    con= 15;
    if(murder == 1) {
        con= 150;
        global.msc= 0;
        global.msg[0]= "* Yo./";
        global.msg[1]= "* Undyne told me to stay&  away from you./";
        global.msg[2]= "* She said you..^1.&* You hurt a lot of people./";
        global.msg[3]= "* .../";
        global.msg[4]= "* But^1, yo^1, that\\'s not true^1,&  right!?/";
        global.msg[5]= "* .../";
        global.msg[6]= "* ... yo..^1.&* Why won\\'t you answer me?/";
        global.msg[7]= "* A..^1. a..^1. and what\\'s with&  that weird expression...?/%%";
        if(global.tempvalue[13] == 1) {
            global.msg[0]= "* Yo^1, dude..^1.&* I..^1. I heard some things^1,&  and.../";
            global.msg[1]= "* What^1?&* Look over here^1?&* What for  %%";
            con= 157;
        }
    }
    instance_create(0, 0, obj_dialoguer );
}
if(con == 15 && !instance_exists(OBJ_WRITER )) {
    mkid.sprite_index= mkid.rsprite;
    con= 16;
    alarm[4]= 30;
}
if(con == 17) {
    mkid.hspeed= -1;
    con= 18;
    alarm[4]= 15;
    mkid.image_speed= 0.2;
}
if(con == 19) {
    mkid.hspeed= 0;
    alarm[4]= 60;
    mkid.image_speed= 0;
    mkid.image_index= 0;
    con= 20;
}
if(con == 21) {
    mkid.sprite_index= mkid.lsprite;
    mkid.hspeed= -3;
    alarm[4]= 15;
    mkid.image_speed= 0.5;
    con= 20.1;
}
if(con == 21.1) {
    mkid.hspeed= 0;
    mkid.image_index= 0;
    mkid.sprite_index= spr_mkid_trip_l ;
    mkid.image_speed= 0;
    mkiddex= 0;
    con= 22;
    alarm[4]= 18;
}
if(con == 22) {
    mkiddex+= 0.25;
    if(mkiddex >= 2) mkiddex= 0;
    if(mkiddex < 1) mkid.image_index= 0;
    else  mkid.image_index= 1;
}
if(con == 23) {
    mkid.image_index= 0;
    mkid.sprite_index= mkid.usprite;
    mkid.hspeed= -1;
    mkid.vspeed= 2;
    con= 24;
    alarm[4]= 15;
}
if(con == 25) {
    mkid.sprite_index= mkid.usprite;
    mkid.image_speed= 0;
    mkid.hspeed= 0;
    mkid.vspeed= 0;
    con= 26;
    alarm[4]= 10;
}
if(con == 27) {
    global.msg[0]= "* Yo^1, w-w-wait^1!&* Help^1!&* I tripped!/%%";
    interact= instance_create(mkid.x, mkid.y + 10, obj_readable_room1 );
    interact.image_xscale= 0.5;
    interact.x+= 5;
    scr_regulartext();
    con= 28;
}
if(con == 28 && !instance_exists(OBJ_WRITER )) {
    undyne= instance_create(__view_get( e__VW.XView, 0 ) - 40, 82, obj_undynea_actor );
    undyne.sprite_index= undyne.rsprite;
    undyne.hspeed= 2;
    undyne.image_speed= 0.2;
    con= 29;
    alarm[4]= 20;
}
if(con == 30) {
    undyne.hspeed= 0;
    undyne.image_speed= 0;
    undyne.image_index= 0;
    con= 31;
    alarm[4]= 30;
}
if(con == 32) {
    undyne.sprite_index= spr_undyne_armraise ;
    snd_play(snd_spearappear );
    con= 33;
    alarm[4]= 20;
}
if(con == 34) {
    undyne.sprite_index= undyne.rsprite;
    global.interact= 0;
    con= 35;
    global.flag[17]= 1;
    doorb= instance_create(__view_get( e__VW.XView, 0 ) - 20, obj_mainchara.y + 10, obj_doorB );
    doora= instance_create(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 20, obj_mainchara.y + 10, obj_doorA );
    undynetimer= 0;
    finaltimer= 0;
    mkidtalk= 0;
    charge= 0;
    samex= obj_mainchara.x;
}
if(con == 35) {
    ll= 0;
    finaltimer++;
    undynetimer++;
    if(undynetimer > 60) {
        undyne.hspeed= 1;
        undyne.image_speed= 0.25;
    }
    if(undynetimer > 75) {
        undyne.hspeed= 0;
        undyne.image_speed= 0;
        undynetimer= 0;
    }
    if(finaltimer > 150 && global.interact == 0 && mkidtalk == 0 && abs(obj_mainchara.x - samex) < 10) {
        mkidtalk= 1;
        global.msg[0]= "\\\\W* Wh-what are you \\\\Ystanding&  around\\\\W for?&* \\\\YGet over here^1,\\\\W dude!/%%";
        scr_regulartext();
        global.interact= 1;
    }
    if(mkidtalk == 1 && !instance_exists(OBJ_WRITER )) {
        global.interact= 0;
        mkidtalk= 2;
    }
    if(finaltimer > 500) ll= 1;
    if(obj_mainchara.x < undyne.x + 40) {
        ll= 1;
        charge= 1;
    }
    able= 0;
    if(ll == 1 && global.interact == 0) able= 1;
    if(ll == 1 && mkidtalk == 1) able= 1;
    if(able == 1) {
        // obj_dialoguer
        with(779) instance_destroy();
        // OBJ_WRITER
        with(782) instance_destroy();
        con= 50;
        global.interact= 1;
    }
}
if(con == 50) {
    undyne.sprite_index= undyne.dsprite;
    undyne.hspeed= 0;
    undyne.image_speed= 0;
    undyne.image_index= 0;
    mkid.image_speed= 0.25;
    global.msg[0]= "* I..^1.&* I\\'m slipping!/%%";
    scr_regulartext();
    con= 51;
}
if(con == 51 && !instance_exists(OBJ_WRITER )) {
    mkid.vspeed= 0.5;
    con= 50.1;
    alarm[4]= 20;
}
if(con == 51.1) {
    mkid.vspeed= 0;
    con= 50.2;
    alarm[4]= 30;
}
if(con == 51.2) {
    blcon= instance_create(undyne.x + 10, undyne.y - 15, obj_cosmeticblcon );
    mkid.vspeed= 4;
    con= 54;
    alarm[4]= 30;
}
if(con == 55) {
    with(blcon) instance_destroy();
    undyne.sprite_index= spr_undyne_jump0 ;
    con= 56;
    alarm[4]= 30;
}
if(con == 57) {
    undyne.sprite_index= spr_undyne_jump1 ;
    snd_play(snd_spearrise );
    undyne.vspeed= -8;
    undyne.gravity= 0.6;
    undyne.gravity_direction= 270;
    undyne.hspeed= 0.5;
    con= 58;
    alarm[4]= 20;
}
if(con == 59) {
    snd_play(snd_fall );
    con= 60;
    alarm[4]= 90;
}
if(con == 61) {
    snd_play(snd_undynestep );
    con= 62;
    alarm[4]= 20;
}
if(con == 63) {
    snd_play(snd_grab );
    con= 69;
    alarm[4]= 80;
}
if(con == 70) {
    global.facing= 0;
    global.msg[0]= "* Undyne..^1. you saved me...?/";
    global.msg[1]= "* Yo^1, I thought I was a&  goner^1, haha.../";
    global.msg[2]= "* ... wait^1, are you okay^1?&* It looks like you fell&  pretty hard.../";
    global.msg[3]= "* Th-this is my fault^1.&* I should have stayed away from&  them^1, like you said./";
    global.msg[4]= "* They just stood there..^1.&* Watching..^1.&* Waiting for me to fall./";
    if(charge == 1)
        global.msg[4]= "* They just went straight to&  fight you instead of&  helping me.../";
    global.msg[5]= "* I was so scared^1, and you.../";
    global.msg[6]= "* What^1?&* You\\'re gonna go fight them&  now?/";
    global.msg[7]= "* But you look hurt..^1.&* You should rest^1, haha.../";
    global.msg[8]= "* .../";
    global.msg[9]= "* W-warriors don\\'t rest^1, huh?/";
    global.msg[10]= "* Undyne..^1. you\\'re really cool./%%";
    scr_regulartext();
    con= 71;
}
if(con == 71 && !instance_exists(OBJ_WRITER )) {
    global.flag[98]= 2;
    con= 72;
}
if(con == 72 && !instance_exists(OBJ_WRITER )) {
    con= 73;
    idealxview= round(obj_mainchara.x - __view_get( e__VW.WView, 0 ) / 2 + obj_mainchara.sprite_width / 2);
    if(idealxview >= room_width - __view_get( e__VW.WView, 0 ))
        idealxview= room_width - __view_get( e__VW.WView, 0 ) - 2;
    if(__view_get( e__VW.XView, 0 ) > idealxview) xdir= 0;
    else  xdir= 1;
    alarm[4]= 40;
}
if(con == 74) {
    if(xdir == 1) __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (4) );
    else  __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (4) );
    if(abs(__view_get( e__VW.XView, 0 ) - idealxview) <= 5) {
        with(mkid) instance_destroy();
        __view_set( e__VW.Object, 0, 1570 );
        obj_mainchara.cutscene= 0;
        with(doora) instance_destroy();
        with(doorb) instance_destroy();
        global.plot= 120;
        caster_free(global.currentsong);
        global.interact= 0;
        instance_destroy();
    }
}
if(con == 80) {
    with(interact) instance_destroy();
    global.interact= 1;
    con= 81;
    alarm[4]= 30;
}
if(con == 82) {
    if(undyne.x > __view_get( e__VW.XView, 0 ) + 20) {
        undyne.hspeed= -1;
        undyne.image_speed= 0.12;
    }
    if(mkid.x <= obj_mainchara.x) mkid.hspeed= -0.8;
    if(mkid.x > obj_mainchara.x) mkid.hspeed= 0.8;
    mkid.vspeed= -1;
    con= 83;
    alarm[4]= 28;
}
if(con == 84) {
    undyne.hspeed= 0;
    undyne.image_index= 0;
    undyne.hspeed= 0;
    mkid.vspeed= 0;
    mkid.hspeed= 0;
    mkid.x= round(mkid.x);
    if(obj_mainchara.x > mkid.x)
        mkid.sprite_index= mkid.rtsprite;
    else  mkid.sprite_index= mkid.ltsprite;
    mkid.image_index= 0;
    mkid.image_speed= 0;
    con= 85;
    alarm[4]= 40;
}
if(con == 86) {
    undyne.hspeed= 0.5;
    undyne.image_speed= 0.25;
    blcon= instance_create(mkid.x, mkid.y - 10, obj_cosmeticblcon );
    con= 87;
    alarm[4]= 16;
}
if(con == 88) {
    undyne.hspeed= 0;
    undyne.image_speed= 0;
    undyne.image_index= 0;
    with(blcon) instance_destroy();
    mkid.sprite_index= mkid.lsprite;
    con= 89;
    alarm[4]= 30;
}
if(con == 90) {
    if(mkid.x > obj_mainchara.x) mkid.hspeed= -5;
    else  mkid.hspeed= -0.5;
    mkid.image_speed= 0.25;
    con= 91;
    alarm[4]= 10;
}
if(con == 92) {
    mkid.hspeed= 0;
    mkid.image_speed= 0;
    con= 93;
    alarm[4]= 30;
}
if(con == 94) {
    mkid.sprite_index= mkid.ltsprite;
    mkid.image_speed= 0.25;
    global.msg[0]= "* Y..^1. y..^1. yo..^1. dude.../";
    global.msg[1]= "* If..^1. If y^1-you wanna hurt&  my friend.../";
    global.msg[2]= "* You\\'re gonna have to get&  through me^1, first./%%";
    scr_regulartext();
    con= 95;
}
if(con == 95 && !instance_exists(OBJ_WRITER )) {
    con= 96;
    alarm[4]= 30;
}
if(con == 97) {
    mkid.image_speed= 0;
    mkid.image_index= 0;
    undyne.hspeed= -0.5;
    undyne.image_speed= 0.2;
    undyne.image_index= 0;
    con= 98;
    alarm[4]= 20;
}
if(con == 99) {
    undyne.hspeed= 0;
    undyne.image_speed= 0;
    undyne.image_index= 0;
    con= 98.1;
    alarm[4]= 30;
}
if(con == 99.1) {
    undyne.hspeed= -0.5;
    undyne.image_speed= 0.2;
    undyne.image_index= 0;
    con= 98.2;
    alarm[4]= 20;
}
if(con == 99.2) {
    undyne.hspeed= 0;
    undyne.image_speed= 0;
    undyne.image_index= 0;
    con= 100;
    alarm[4]= 60;
}
if(con == 101) {
    undyne.sprite_index= undyne.lsprite;
    undyne.hspeed= -2;
    undyne.image_speed= 0.25;
    con= 102;
    alarm[4]= 90;
}
if(con == 103) {
    with(undyne) instance_destroy();
    con= 104;
    mkid.sprite_index= mkid.rtsprite;
    alarm[4]= 30;
}
if(con == 105) {
    global.msg[0]= "* She\\'s gone.../";
    global.msg[1]= "* Yo^1, you really saved my skin./";
    global.msg[2]= "* Guess being enemies was just&  a nice thought^1, haha./";
    global.msg[3]= "* We\\'ll just have to be friends&  instead./";
    global.msg[4]= "* ... man^1, I should REALLY go&  home.../";
    global.msg[5]= "* I bet my parents are worried&  sick about me!/%%";
    con= 106;
    scr_regulartext();
}
if(con == 106 && !instance_exists(OBJ_WRITER )) {
    con= 107;
    alarm[4]= 20;
}
if(con == 108) {
    mkid.sprite_index= mkid.lsprite;
    mkid.image_speed= 0.25;
    mkid.hspeed= -1;
    con= 109;
    alarm[4]= 30;
}
if(con == 110) {
    mkid.image_speed= 0;
    mkid.hspeed= 0;
    mkid.image_index= 0;
    con= 111;
    alarm[4]= 30;
}
if(con == 112) {
    mkid.sprite_index= mkid.rtsprite;
    con= 113;
    alarm[4]= 30;
}
if(con == 114) {
    global.msg[0]= "* Later^1, dude!/%%";
    scr_regulartext();
    con= 115;
}
if(con == 115 && !instance_exists(OBJ_WRITER )) {
    mkid.hspeed= -4;
    mkid.image_speed= 0.5;
    mkid.sprite_index= mkid.lsprite;
    con= 116;
    idealxview= round(obj_mainchara.x - __view_get( e__VW.WView, 0 ) / 2 + obj_mainchara.sprite_width / 2);
    if(__view_get( e__VW.XView, 0 ) > idealxview) xdir= 0;
    else  xdir= 1;
    alarm[4]= 40;
}
if(con == 117) {
    if(xdir == 1) __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (2) );
    else  __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (2) );
    if(abs(__view_get( e__VW.XView, 0 ) - idealxview) <= 2) {
        with(mkid) instance_destroy();
        __view_set( e__VW.Object, 0, 1570 );
        obj_mainchara.cutscene= 0;
        with(doora) instance_destroy();
        with(doorb) instance_destroy();
        global.plot= 120;
        global.flag[98]= 1;
        caster_free(global.currentsong);
        global.interact= 0;
        instance_destroy();
    }
}
if(con == 150 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 6)
    global.facing= 2;
if(con == 150 && !instance_exists(OBJ_WRITER )) {
    global.facing= 3;
    obj_mainchara.hspeed= -2;
    obj_mainchara.moving= 1;
    obj_mainchara.image_speed= 0.25;
    con= 151;
    alarm[4]= 5;
}
if(con == 152) {
    mkid.hspeed= -2;
    mkid.sprite_index= spr_mkid_r ;
    mkid.image_speed= 0.25;
    con= 153;
    alarm[4]= 10;
}
if(con == 154) {
    obj_mainchara.hspeed= 0;
    mkid.hspeed= 0;
    mkid.image_speed= 0;
    mkid.image_index= 0;
    mkid.sprite_index= spr_mkid_rt ;
    con= 155;
    alarm[4]= 30;
}
if(con == 156) {
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.msg[0]= "* Oh..^1.&* Oh man.../";
    global.msg[1]= "* (Man^1, my h-heart\\'s pounding&  right out of my chest...)/";
    global.msg[2]= "* (... what would Undyne do?)/";
    global.msg[3]= "* (...)/";
    global.msg[4]= "* Yo.../";
    global.msg[5]= "* Y-you\\'d b-better st-stop&  r-right where you are.../";
    global.msg[6]= "* Cause if you w-wanna hurt&  anyone else..^1. you\\'re.../";
    global.msg[7]= "* You\\'re gonna have to get&  through me^1, first./";
    global.msg[8]= "* A..^1. and..^1. and..^1.%%";
    instance_create(0, 0, obj_dialoguer );
    con= 157;
}
if(con == 157 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 1) mkid.sprite_index= spr_mkid_lt ;
    if(OBJ_WRITER.stringno == 4) mkid.sprite_index= spr_mkid_rt ;
}
if(con == 157 && !instance_exists(OBJ_WRITER )) {
    mkid.sprite_index= spr_mkid_rt ;
    global.battlegroup= 91;
    global.seriousbattle= 1;
    global.mercy= 1;
    instance_create(0, 0, obj_battler );
    con= 158;
    alarm[4]= 32;
}
if(con == 159) {
    global.seriousbattle= 0;
    global.mercy= 0;
    global.interact= 1;
    con= 160;
    alarm[4]= 30;
}
if(con == 160) {
    obj_mainchara.cutscene= 0;
    __view_set( e__VW.Object, 0, 1570 );
    con= 160.1;
    global.interact= 1;
    alarm[4]= 30;
    if(global.flag[350] == 1) {
        with(mkid) instance_destroy();
        con= 170;
        alarm[4]= -1;
    }
    global.interact= 1;
}
if(con == 160.1) global.interact= 1;
if(con == 161.1) {
    global.interact= 1;
    global.typer= 5;
    global.facechoice= 0;
    global.msc= 0;
    global.msg[0]= "* S-see^1?&* I knew y-you weren\\'t so&  bad!/";
    global.msg[1]= "* I\\'ve gotta go tell Undyne&  she was wrong about you!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 162;
}
if(con == 162) global.interact= 1;
if(con == 162 && !instance_exists(OBJ_WRITER )) {
    mkid.hspeed= -4;
    mkid.image_speed= 0.5;
    mkid.sprite_index= mkid.lsprite;
    con= 163;
    alarm[4]= 40;
}
if(con == 164) con= 170;
if(con == 170) {
    global.facing= 0;
    global.interact= 0;
    if(global.plot < 120) global.plot= 120;
    con= 171;
    instance_destroy();
}

/* */
/*  */
