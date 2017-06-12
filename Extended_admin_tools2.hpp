//Menu is made by Stealthstick, Edited and scripted by Marre

class EAT_first
{
	idd = -1;
	movingEnable = true;
	moving = 1;
	onLoad = "with uiNameSpace do { EAT_first = _this select 0 }";
	controls[] = {title,playerList,button1,button2,button3,endText,exit,RscPicture_1200};
	controlsBackground[] = {IGUIBack_2200, DLG_BACK1, background};


	class title: RscText
	{
		idc = 1000;
		text = "Extended Admin tools V 2.0 First executed";
		x = -0.000315403;
		y = 0.0380377;
		w = 1.00063;
		h = 0.0219982;
		colorText[] = {255, 0, 250, 1};
		colorBackground[] = {0,0,0,1};
	};
	class playerList: RscListBox
	{
		idc = 1500;
		x = -0.000315403;
		y = 0.0600359 ;
		w = 1.50363;
		h = 0.516958;
		SizeEX = 0.0295;
		RowHeight = 0.03;
	};
	class background : RscBgRahmen
	{
		x = -0.000315403;
		y = 0.0600359;
		w = 1.50363;
		h = 0.516958;
	};
	class DLG_BACK1: RscBackground
	{
		x = -0.000315403;
		y = 0.0600359;
		w = 1.50363;
		h = 0.516958;
	};
	class button1: RscButton
	{
		idc = 1600;
		text = "Execute script";
		action = "call hint";
		x = 0.0151583;
		y = 0.609991 ;
		w = 0.278526;
		h = 0.0329973 ;
		colorText[] = {255,0,0,1};
		colorBackground[] = {0.08,0.2,0,1};
	};
	class IGUIBack_2200: IGUIBack
	{
		idc = 2200;
		x = -0.00547405;
		y = 0.576994 ;
		w = 1.00579;
		h = 0.384969 ;
		colorBackground[] = {0,0,0,1};
	};
	class button2: RscButton
	{
	    idc = 1608;
	    text = "List";
	    action = "execVM ""list.sqf""";
	    x = 0.0;
	    y = 0.0;
	    w = 0.278526;
	    h = 0.0329973;
	    colorText[] = {12, 255, 0, 1};
	    colorBackground[] = {0,0,1,1};
	};
	class button3: RscButton
    {
        idc = 1609;
        text = "Start scripts";
        action = "execVM ""adminscripts.sqf""";
        x = 0.5;
        y = 0.0;
        w = 0.278526;
        h = 0.0329973;
        colorText[] = {12, 255, 0,1};
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
		colorText[] = {255, 0, 250, 1};
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
		colorText[] = {255,0,0,1};
		colorBackground[] = {0.71,0.03,0,1};
	};
	class RscPicture_1200: RscPicture
	{
        //Add a picture if you want
		idc = 1200;
		text = "test.paa";
		x = 0.422632;
		y = 0.631989 ;
		w = 0.144421;
		h = 0.263978 ;
	};

};
