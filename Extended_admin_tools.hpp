//Menu is made by Stealthstick, Edited and scripted by Marre
//This is the second thing that pops out
class EAT
{
	idd = -1;
	movingEnable = true;
	moving = 1;
	onLoad = "with uiNameSpace do { EAT = _this select 0 }";
	controls[] = {title,playerList,button1,button2,button3,button4,button5,button6,button7,button8,button9,button10,button11,button12,button13,button14,button15,button16,endText,exit};
	controlsBackground[] = {IGUIBack_2200, DLG_BACK1, background};


	class title: RscText
	{
		idc = 1000;
		text = "Extended Admin tools V 2.0 / Player activities";
		x = -0.000315403;
		y = 0.0380377;
		w = 1.00063;
		h = 0.0219982;
		colorText[] = {255,255,255,255};
		colorBackground[] = {0.25,0.37,0,1};
	};
	class playerList: RscListBox
	{
		idc = 1500;
		x = -0.001315403;
		y = 0.0600359 ;
		w = 1.90363;
		h = 0.516958;
		SizeEX = 0.0255;
		RowHeight = 0.03;
	};
	class background : RscBgRahmen
	{
		x = -0.000315403;
		y = 0.0600359;
		w = 1.90363;
		h = 0.516958;
	};
	class DLG_BACK1: RscBackground
	{
		x = -0.000315403;
		y = 0.0600359;
		w = 1.90363;
		h = 0.516958;
	};
	class button1: RscButton
	{
		idc = 1600;
		text = "Kick";
		action = "call adminMenuKick";
		x = 0.0151583;
		y = 0.609991 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = -0.00547405;
		y = 0.576994 ;
		w = 1.00579;
		h = 0.384969 ;
		colorBackground[] = {0,0,0,0.85};
	};
	class button2: RscButton
	{
		idc = 1601;
		text = "Give 100k";
		action = "execVM ""moneh.sqf""";
		x = 0.0151583;
		y = 0.653987 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button3: RscButton
	{
		idc = 1602;
		text = "Give a Million";
		action = "execVM ""moneh2.sqf""";
		x = 0.0151583;
		y = 0.697984 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button4: RscButton
	{
		idc = 1603;
		text = "ESP";
		action = "execVM ""esp.sqf""";
		x = 0.0151583;
		y = 0.74198 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button5: RscButton
	{
		idc = 1604;
		text = "Ban player";
		action = "call adminMenuBan";
		x = 0.0151583;
		y = 0.785977 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button6: RscButton
	{
		idc = 1604;
		text = "Warn player";
		action = "call adminMenuWarn";
		x = 0.0151583;
		y = 0.829974 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button7: RscButton
	{
		idc = 1604;
		text = "Teleport to player";
		action = "call adminMenuTeleport";
		x = 0.0151583;
		y = 0.873971 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button8: RscButton
	{
		idc = 1600;
		text = "Antilock";
		action = "execVM ""antilock.sqf""";
		x = 0.71;
		y = 0.609991 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button9: RscButton
	{
		idc = 1601;
		text = "Testing";
		action = "call hint3";
		x = 0.71;
		y = 0.653987 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button10: RscButton
	{
		idc = 1602;
		text = "Veh";
		action = "call adminMenuKick";
		x = 0.71;
		y = 0.697984 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button11: RscButton
	{
		idc = 1603;
		text = "Comp all on server";
		action = "call adminMenuKick";
		x = 0.71;
		y = 0.74198 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button12: RscButton
	{
		idc = 1604;
		text = "Restart the server";
		action = "call adminMenuKick";
		x = 0.71;
		y = 0.785977 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button13: RscButton
	{
		idc = 1604;
		text = "Teleport";
		action = "execVM ""teleport.sqf""";
		x = 0.71;
		y = 0.829974 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button14: RscButton
	{
		idc = 1604;
		text = "Become a cop";
		action = "execVM ""fucku.sqf""";
		x = 0.71;
		y = 0.873971 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class button15: RscButton
	{
	    idc = 1608;
	    text = "Refresh List";
	    action = "execVM ""list2.sqf""";
	    x = 0.0;
	    y = 0.0;
	    w = 0.278526;
	    h = 0.0329973;
	    colorText[] = {1,1,1,1};
	    colorBackground[] = {0,0,1,1};
	};
	class button16: RscButton
    {
        idc = 1609;
        text = "Clear List";
        action = "execVM ""clear.sqf""";
        x = 0.5;
        y = 0.0;
        w = 0.278526;
        h = 0.0329973;
        colorText[] = {1,1,1,1};
        colorBackground[] = {0,0,1,1};
    };
	class endText: RscText
	{
		idc = 1001;
		text = "Menu Made by Stealthstick. Edited and scripted by TheGreatStep."; //--- ToDo: Localize;
		x = -0.000315403;
		y = 0.961962 ;
		w = 1.00063;
		h = 0.0439964 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.25,0.37,0,1};
	};
	class exit: RscButton
	{
		idc = 1605;
		text = "Exit"; //--- ToDo: Localize;
		action = "closeDialog 0;";
		x = 0.293684;
		y = 0.92018 ;
		w = 0.412631;
		h = 0.0329973 ;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0.71,0.03,0,1};
	};
	/*class RscPicture_1200: RscPicture
	{
        //Add a picture if you want
		idc = 1200;
		text = "";
		x = 0.422632;
		y = 0.631989 ;
		w = 0.144421;
		h = 0.263978 ;
	};
	*/
};
