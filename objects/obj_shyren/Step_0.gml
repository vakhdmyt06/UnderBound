if(global.mnfight == 3) attacked= 0;
if(alarm[5] > 0) {
    if(global.monster[0] == 1 && global.monsterinstance[0].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[0].alarm[5];
    if(global.monster[1] == 1 && global.monsterinstance[1].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[1].alarm[5];
    if(global.monster[2] == 1 && global.monsterinstance[2].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[2].alarm[5];
}
if(global.mnfight == 1 && talked == 0) {
    alarm[5]= 110;
    alarm[6]= 1;
    talked= 1;
    global.heard= 0;
}
if(keyboard_multicheck_pressed(13) && alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
    alarm[5]= 2;
if(global.hurtanim[myself] == 1) {
    shudder= 8;
    alarm[3]= global.damagetimer;
    global.hurtanim[myself]= 3;
}
if(global.hurtanim[myself] == 2) {
    global.monsterhp[myself]-= takedamage;
    with(dmgwriter) alarm[2]= 15;
    if(global.monsterhp[myself] >= 1) {
        mypart1= instance_create(x, y, part1);
        global.hurtanim[myself]= 0;
        image_index= 0;
        global.myfight= 0;
        global.mnfight= 1;
    } else  {
        global.myfight= 0;
        global.mnfight= 1;
        killed= 1;
        instance_destroy();
    }
}
if(global.hurtanim[myself] == 5) {
    global.damage= 0;
    instance_create(x + sprite_width / 2 - 48, y - 24, obj_dmgwriter );
    // obj_dmgwriter
    with(189) alarm[2]= 30;
    global.myfight= 0;
    global.mnfight= 1;
    global.hurtanim[myself]= 0;
}
if(global.mnfight == 2 && attacked == 0) {
    pop= scr_monstersum();
    if(encourage == 5) encourage= 6;
    global.turntimer= 124;
    global.firingrate= 25;
    if(pop == 3) global.firingrate*= 2.4;
    if(pop == 2) global.firingrate*= 1.7;
    if(mycommand >= 0) {
        global.firingrate= 50;
        if(global.turntimer < 90) global.turntimer= 90;
        if(emotion == 1) {
            global.firingrate= 8 - encourage / 1.5;
            emotion= 2;
            global.turntimer= 124;
        }
        gen= instance_create(x + 36, y + 62, obj_musbulgen );
        gen.bullettype= 0;
        if(encourage >= 5) global.turntimer= 310;
    }
    gen.myself= myself;
    if(mycommand >= 0) global.msg[0]= "* Shyren hums very faintly.";
    if(mycommand >= 25)
        global.msg[0]= "* Shyren pretends to be a&  pop idol.";
    if(mycommand >= 50)
        global.msg[0]= "* Shyren taps a little beat&  with her fins.";
    if(mycommand >= 70)
        global.msg[0]= "* Shyren thinks about doing&  karaoke by her";
    if(mycommand >= 90) global.msg[0]= "* Smells like music.";
    if(global.monsterhp[myself] < 30)
        global.msg[0]= "* Shyren\\'s voice gets raspy.";
    if(encourage == 1)
        global.msg[0]= "* Shyren seems much more&  comfortable singing along.";
    if(encourage == 2) {
        if(global.flag[67] == 0)
            global.msg[0]= "* Sans is selling tickets&  made of toilet paper.";
        else 
            global.msg[0]= "* A hooded figure watches&  the commotion from afar.";
    }
    if(encourage == 3)
        global.msg[0]= "* The crowd tosses clothing^1.&* It\\'s a storm of socks.";
    if(encourage == 4)
        global.msg[0]= "* Shyren thinks about her&  future.";
    if(encourage > 4) global.msg[0]= " ";
    attacked= 1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* SHYREN - ATK 19 DEF 0&* Tone deaf^1. She\\'s too ashamed&  to sing her deadly song./^";
        if(encourage == 1)
            global.msg[0]= "* SHYREN - ATK 19 DEF 0&* A talented singer^1, with&  a little help./^";
        if(encourage > 1)
            global.msg[0]= "* SHYREN - ATK 19 DEF 0&* That\\'s Shyren^1.&* She\\'s your band-mate./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        d= choose(0, 1, 2);
        if(d == 0)
            global.msg[0]= "* You hum a funky tune^1.&* Shyren follows your melody./^";
        if(d == 1)
            global.msg[0]= "* You hum a sad song^1.&* Shyren follows your melody./^";
        if(d == 2)
            global.msg[0]= "* You hum a jazz ballad^1.&* Shyren follows your melody./^";
        if(encourage == 1) {
            global.msg[0]= "* You hum some more^1.&* Monsters are drawn to the&  music./";
            global.msg[1]= "* Suddenly^1, it\\'s a concert.../^";
        }
        if(encourage == 2)
            global.msg[0]= "* You hum some more^1.&* The seats are sold out^1.&* You feel like a rock star./^";
        if(encourage == 3) {
            global.msg[0]= "* You hum some more^1.&* But the constant attention.../";
            global.msg[1]= "* The tours..^1.&* The groupies..^1.&* It\\'s all.../^";
        }
        if(encourage == 4) {
            global.msg[0]= "* You and Shyren have come so&  far^1, but it\\'s time./";
            global.msg[1]= "* You both have your own&  journeys to embark on./";
            global.msg[2]= "* You hum a farewell song./^";
        }
        encourage++;
        emotion= 1;
        global.monsterdef[myself]= -150;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        mercymod= 140;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* You smile^1.&* You ask to see Shyren\\'s smile^1,&  too./";
        global.msg[1]= "* Shyren gets quieter^1.&* In the corner^1, Aaron nods&  his head approvingly./^";
        if(creep == 1)
            global.msg[0]= "* You keep smiling^1.&* But nothing happened./^";
        if(encourage > 1) {
            global.msg[0]= "* You give a darling smile and&  a little wink./";
            global.msg[1]= "* The crowd goes wild!/^";
        }
        creep= 1;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        global.msg[0]= "* You wave your arms wildly^1.&* You are now vulnerable&  to electric attacks./^";
        if(encourage > 1)
            global.msg[0]= "* You wave your arms wildly^1.&* The crowd eats it up./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    global.heard= 1;
}
if(encourage == 6 && global.turntimer < 40) {
    encourage= 7;
    if(instance_exists(obj_musbulgen )) {
        // obj_musbulgen
        with(689) instance_destroy();
    }
    caster_pause(global.batmusic);
}
if(encourage == 7 && global.turntimer < 18) global.border= 0;
if(encourage == 7 && global.turntimer <= 2) {
    global.flag[81]= 2;
    global.turntimer= -1;
    global.mnfight= 1;
    global.myfight= 0;
    global.border= 0;
    // OBJ_WRITER
    with(782) instance_destroy();
    global.typer= 1;
    obj_heart.visible= 0;
    script_execute(scr_mercystandard );
    instance_destroy();
}
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(mercymod == 222 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}

/* */
/*  */
