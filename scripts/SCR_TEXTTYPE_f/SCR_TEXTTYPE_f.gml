function SCR_TEXTTYPE_f(argument0) {
	if(argument0 != 0) global.typer= argument0;
	if(global.typer == 1) script_execute(SCR_TEXTSETUP , 1, 16777215, x + 20, y + 20, x + global.idealborder[1] - 55, 1, 1, 94, 16, 32);
	if(global.typer == 2) script_execute(SCR_TEXTSETUP , 4, 0, x, y, x + 190, 43, 2, 95, 9, 20);
	if(global.typer == 3) script_execute(SCR_TEXTSETUP , 7, 8421376, x, y, x + 100, 39, 3, 95, 10, 10);
	if(global.typer == 4) script_execute(SCR_TEXTSETUP , 2, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0, 1, 101, 8, 18);
	if(global.typer == 5) script_execute(SCR_TEXTSETUP , 10, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0, 1, 96, 8, 18);
	if(global.typer == 6) script_execute(SCR_TEXTSETUP , 4, 0, x, y, x + 200, 0.5, 1, 97, 9, 20);
	if(global.typer == 7) script_execute(SCR_TEXTSETUP , 4, 0, x, y, x + 200, 2, 2, 98, 9, 20);
	if(global.typer == 8) script_execute(SCR_TEXTSETUP , 4, 0, x, y, x + 200, 0.5, 1, 101, 9, 20);
	if(global.typer == 9) script_execute(SCR_TEXTSETUP , 10, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0, 1, 97, 8, 18);
	if(global.typer == 10) script_execute(SCR_TEXTSETUP , 2, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0, 1, 96, 8, 18);
	if(global.typer == 11) script_execute(SCR_TEXTSETUP , 10, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0, 2, 96, 9, 18);
	if(global.typer == 12) script_execute(SCR_TEXTSETUP , 4, 0, x, y, x + 200, 1, 3, 99, 10, 20);
	if(global.typer == 13) script_execute(SCR_TEXTSETUP , 4, 0, x, y, x + 200, 2, 4, 99, 11, 20);
	if(global.typer == 14) script_execute(SCR_TEXTSETUP , 4, 0, x, y, x + 200, 3, 5, 99, 14, 20);
	if(global.typer == 15) script_execute(SCR_TEXTSETUP , 4, 0, x, y, x + 200, 0, 10, 99, 18, 20);
	if(global.typer == 16) script_execute(SCR_TEXTSETUP , 10, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 1,2, 2, 98, 8, 18);
	if(global.typer == 17) script_execute(SCR_TEXTSETUP , 8, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0.8, 1, 88, 8, 18);
	if(global.typer == 19) global.typer= 18;
	if(global.typer == 18) script_execute(SCR_TEXTSETUP , 9, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0, 1, 87, 11, 18);
	if(global.typer == 20) script_execute(SCR_TEXTSETUP , 5, 0, x, y, x + 200, 0, 2, 98, 25, 20);
	if(global.typer == 21) script_execute(SCR_TEXTSETUP , 2, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0, 4, 96, 10, 18);
	if(global.typer == 22) script_execute(SCR_TEXTSETUP , 9, 0, x + 10, y, x + 200, 1, 1, 87, 11, 20);
	if(global.typer == 23) script_execute(SCR_TEXTSETUP , 2, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 310, 0, 1, 95, 8, 18);
	if(global.typer == 27) script_execute(SCR_TEXTSETUP , 2, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0, 3, 56, 8, 18);
	if(global.typer == 28) script_execute(SCR_TEXTSETUP , 2, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0, 2, 65, 8, 18);
	if(global.typer == 30) script_execute(SCR_TEXTSETUP , 1, 16777215, x + 20, y + 20, 9999, 0, 2, 90, 20, 36);
	if(global.typer == 31) script_execute(SCR_TEXTSETUP , 2, 16777215, x + 20, y + 20, 9999, 0, 2, 90, 12, 18);
	if(global.typer == 32) script_execute(SCR_TEXTSETUP , 1, 16777215, x + 20, y + 20, 9999, 0, 2, 84, 20, 36);
	if(global.typer == 33) script_execute(SCR_TEXTSETUP , 4, 0, x, y, x + 190, 43, 1, 95, 9, 20);
	if(global.typer == 34) script_execute(SCR_TEXTSETUP , 0, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0, 2, 71, 16, 18);
	if(global.typer == 35) script_execute(SCR_TEXTSETUP , 2, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0, 2, 84, 10, 18);
	if(global.typer == 36) script_execute(SCR_TEXTSETUP , 2, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0, 8, 85, 10, 18);
	if(global.typer == 37) script_execute(SCR_TEXTSETUP , 2, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0, 1, 78, 8, 18);
	if(global.typer == 38) script_execute(SCR_TEXTSETUP , 2, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0, 6, 78, 8, 18);
	if(global.typer == 39) script_execute(SCR_TEXTSETUP , 4, 0, x + 16, y, x + 190, 0, 1, 78, 9, 20);
	if(global.typer == 40) script_execute(SCR_TEXTSETUP , 4, 0, x + 16, y, x + 190, 1, 2, 78, 9, 20);
	if(global.typer == 41) script_execute(SCR_TEXTSETUP , 4, 0, x + 16, y, x + 190, 0.5, 1, 78, 9, 20);
	if(global.typer == 42) script_execute(SCR_TEXTSETUP , 4, 0, x + 16, y, x + 190, 2, 4, 78, 9, 20);
	if(global.typer == 43) script_execute(SCR_TEXTSETUP , 4, 0, x + 16, y, x + 190, 2, 4, 80, 9, 20);
	if(global.typer == 44) script_execute(SCR_TEXTSETUP , 4, 0, x + 16, y, x + 190, 2, 5, 81, 9, 20);
	if(global.typer == 45) script_execute(SCR_TEXTSETUP , 4, 0, x + 16, y, x + 190, 2, 7, 82, 9, 20);
	if(global.typer == 47) script_execute(SCR_TEXTSETUP , 2, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0, 1, 83, 8, 18);
	if(global.typer == 48) script_execute(SCR_TEXTSETUP , 8, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0.8, 1, 89, 8, 18);
	if(global.typer == 49) script_execute(SCR_TEXTSETUP , 4, 16777215, x, y, x + 190, 43, 1, 83, 9, 20);
	if(global.typer == 50) script_execute(SCR_TEXTSETUP , 1, 16777215, x + 20, y + 20, 999, 0, 3, 56, 8, 18);
	if(global.typer == 51) script_execute(SCR_TEXTSETUP , 4, 0, x + 20, y + 20, 999, 0, 3, 56, 8, 18);
	if(global.typer == 52) script_execute(SCR_TEXTSETUP , 4, 0, x + 20, y + 20, 999, 0, 1, 83, 8, 18);
	if(global.typer == 53) script_execute(SCR_TEXTSETUP , 4, 0, x + 20, y + 20, 999, 1,5, 4, 56, 8, 18);
	if(global.typer == 54) script_execute(SCR_TEXTSETUP , 4, 0, x + 20, y + 20, 999, 0, 7, 56, 8, 18);
	if(global.typer == 55) script_execute(SCR_TEXTSETUP , 4, 0, x, y, x + 999, 0, 2, 96, 9, 20);
	if(global.typer == 60) script_execute(SCR_TEXTSETUP , 2, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0, 2, 90, 8, 18);
	if(global.typer == 61) script_execute(SCR_TEXTSETUP , 1, 16777215, x + 20, y + 20, x + 99999, 0, 2, 96, 16, 32);
	if(global.typer == 62) script_execute(SCR_TEXTSETUP , 4, 0, x, y, x + 200, 0.5, 3, 90, 9, 20);
	if(global.typer == 63) script_execute(SCR_TEXTSETUP , 4, 0, x, y, x + 200, 0.5, 2, 90, 9, 20);
	if(global.typer == 66) script_execute(SCR_TEXTSETUP , 4, 0, x, y, x + 200, 0.5, 2, 97, 9, 20);
	if(global.typer == 67) script_execute(SCR_TEXTSETUP , 1, 16777215, x + 20, y + 20, x + 999, 2, 5, 98, 16, 32);
	if(global.typer == 70) script_execute(SCR_TEXTSETUP , 10, 16777215, x + 20, y + 20, 9999, 0, 1, 96, 16, 32);
	if(global.typer == 71) script_execute(SCR_TEXTSETUP , 10, 16777215, x + 20, y + 20, 9999, 0, 3, 90, 20, 36);
	if(global.typer == 72) script_execute(SCR_TEXTSETUP , 10, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 999, 0, 1, 97, 8, 18);
	if(global.typer == 73) script_execute(SCR_TEXTSETUP , 10, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 1,2, 2, 98, 8, 18);
	if(global.typer == 74) script_execute(SCR_TEXTSETUP , 10, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 999, 1,4, 4, 98, 20, 36);
	if(global.typer == 75) script_execute(SCR_TEXTSETUP , 10, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 999, 2, 2, 98, 20, 32);
	if(global.typer == 76) script_execute(SCR_TEXTSETUP , 10, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 999, 0, 1, 98, 20, 32);
	if(global.typer == 77) script_execute(SCR_TEXTSETUP , 10, 16777215, x + 20, y + 20, 9999, 0, 2, 96, 16, 32);
	if(global.typer == 78) script_execute(SCR_TEXTSETUP , 10, 16777215, x + 20, y + 20, __view_get( e__VW.XView, view_current ) + 290, 0, 4, 97, 8, 18);



}
