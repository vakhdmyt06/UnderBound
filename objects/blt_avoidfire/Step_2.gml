if(distance_to_point(x, obj_heart.y) < 100)
    hspeed= 180 / (distance_to_point(obj_heart.x, y) + 10) - 1;
if(obj_heart.x > x) hspeed= -hspeed;
if(global.turntimer < 1) instance_destroy();
if(x < global.idealborder[0]) instance_destroy();
if(x > global.idealborder[1]) instance_destroy();
if(y > global.idealborder[2]) visible= 1;
if(y > global.idealborder[3]) instance_destroy();
