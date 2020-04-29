/*
	
*/

/*

_UID = getPlayerUID player;
_validUIDList = ["76561198062583551","50360007","95987527","78012423","89075527","","","","","","","","","","","","","",""];


if (_UID in _validUIDList) then {
hint "Bypass activated";
} else {



player globalChat "TheGreatStep's Antihack Loaded";


player sideChat "Reading server side files...";



if(isServer) then
{
	[] spawn
	{
		while {true} do
		{
			_bombs = nearestObjects [bombcheck,["Bo_GBU12_LGB","6Rnd_GBU12_AV8B","AT5_AT","Sh_105_HE"],100000];
			if(count _bombs > 0) then
			{
				_txt = format ["Time: %2 - Deleted %1 bombs",count _bombs,time];
				{deleteVehicle _x} forEach _bombs;
				cheatDetectionLog = cheatDetectionLog + "\n" + _txt;
				publicVariable "cheatDetectionLog";
			};
			sleep 1;
		};
	};
};

//isEvoAdmin = false;
if(rankPlayer == "Owner" or rankPlayer == "HeadAdmin" or rankPlayer == "Admin" or rankPlayer == "Moderator") then {isEvoAdmin = true};
cheatDetectionLog = "";


//Anti-Freeze for admins
if(isEvoAdmin) then
{
	[] spawn
	{
		while {true} do
		{
			sleep 10;
			disableUserInput false;
		};
	};
};



//player globalChat "Anti-TP";
//Anti-Teleport
[] spawn
{
	while {true} do
	{
		_oldPos = position vehicle player;
		sleep 1;
		_newPos = position vehicle player;
		if(alive player && _newPos distance _oldPos >= 250) then
		{
			_txt = format ["Time: %2 - %1 is possibly teleporting\nOld Pos: %3 - New Pos: %4",name player,time,mapGridPosition _oldPos, mapGridPosition _newPos];
			cheatDetectionLog = cheatDetectionLog + "\n" + _txt;
			publicVariable "cheatDetectionLog";
		};
	};
};
/*
//player globalChat "SS_Damagecheck";
ss_DamageCheck =
{
	_dmg = _this select 0;
	if(_dmg > 0) then
	{
		if(damage player == 0) then
		{
			_txt = format ["Time: %2 - %1 possibly has god-mode",name player,time];
			cheatDetectionLog = cheatDetectionLog + "\n" + _txt;
			publicVariable "cheatDetectionLog";
		};
	};
};

//player globalChat "Anti-God";
//Anti-God
[] spawn
{
	player addEventHandler ["Dammaged",{[_this select 2] call ss_DamageCheck}];
};
*/

//player globalChat "Anti-Weapon";
//Anti-Weapon

/*

weaponBlackList =
[
	"ksvk",
	"PLACE BAD WEAPON CLASSNAMES HERE",
	"PLACE BAD WEAPON CLASSNAMES HERE",
	"PLACE BAD WEAPON CLASSNAMES HERE"
];

[] spawn
{
	while {true} do
	{
		{
			if(_x in weaponBlackList) then 
			{
				_txt = format ["Time: %3 - %1 has a black-listed weapon\n%2",name player,_x,time];
				cheatDetectionLog = cheatDetectionLog + "\n" + _txt;
				publicVariable "cheatDetectionLog";
				removeAllWeapons player;
				{player removeMagazine _x} forEach (magazines player);
			};
		} forEach (weapons player);
		sleep 2;
	};
};


//player globalChat "Anti-Money";
//Money Detection
[] spawn
{
	while {true} do
	{
		_oldMoney = bankmoney;
		waitUntil {bankMoney != _oldMoney};
		_newMoney = bankmoney;
		_diff = _oldMoney - _newMoney;
		if (_diff > 999999 or _diff < -999999) then { 
			_txt = format ["Time: %4 - %1's bank money has changed from %2 to %3.",name player,_oldMoney,_newMoney,time];
			cheatDetectionLog = cheatDetectionLog + "\n" + _txt;
			publicVariable "cheatDetectionLog";
		};
	};
};

[] spawn
{
	while {true} do
	{	
		_oldMoney = 'geld' call INV_GetItemAmount;
		waitUntil {'geld' call INV_GetItemAmount != _oldMoney};
		_geld = 'geld' call INV_GetItemAmount;
		_invdiff = _oldMoney - _geld;
		if (_invdiff > 999999 or _invdiff < -999999) then { 
			_txt = format ["Time: %4 - %1's inventory money has changed from %2 to %3.",name player,_oldMoney,_geld,time];
			cheatDetectionLog = cheatDetectionLog + "\n" + _txt;
			publicVariable "cheatDetectionLog";
		};
	};
};

//Anti-Vars
blackListVars =
[
	"hackmenu",
	"hax",
	"tracker",
	"pic",
	"hacks",
	"Gotcha",
	"init_localpublish_shitttt",
	"infi_STAR_exec",
	"init_infiSTAR_chewSTAR_kjadsnad",
	"TAG_onKeyDown",
	"igodokxtt",
	"omgwtfbbq",
	"w_animName",
	"Armor1",
	"planeGroup",
	"HMDIR",
	"HDIR",
	"MENUTITLE",
	"AJ Menu",
	"VA Menu",
	"Reset Menu",
	"sCode",
	"cTargetPos",
	"pic",
	"veh", 
	"wuat_fpsMonitor", 
	"unitList", 
	"list_wrecked",
    "p",
	"fffffffffff",
	"ggggggggg",
	"markPos", 
	"pos", 
	"marker", 
	"TentS", 
	"VL", 
	"MV",
    "mk2", 
	"i", 
	"j", 
	"fuckmegrandma", 
	"mehatingjews", 
	"scode", 
	"TTT5OptionNR",
	"omgwtfbbq", 
	"namePlayer", 
	"thingtoattachto", 
	"HaxSmokeOn", 
	"v",
    "antiloop", 
	"ARGT_JUMP", 
	"selecteditem", 
	"moptions", 
	"delaymenu", 
	"gluemenu",
    "spawnweapons1", 
	"abcd", 
	"skinmenu", 
	"playericons", 
	"changebackpack", 
	"keymenu",
    "img", 
	"surrmenu", 
	"footSpeedIndex", 
	"ctrl_onKeyDown", 
	"plrshldblcklst",
    "musekeys", 
	"dontAddToTheArray", 
	"morphtoanimals", 
	"playerDistanceScreen", 
	"pm",
    "debugConsoleIndex", 
	"MY_KEYDOWN_FNC", 
	"TAG_onKeyDown", 
	"changestats", 
	"helpmenu",
    "unitsmenu", 
	"xZombieBait", 
	"shnmenu", 
	"slag", 
	"xtags", 
	"tempslag", 
	"dayzRespawn2", 
	"dayzRespawn3",
    "hangender", 
	"addgun", 
	"ESP", 
	"BIS_fnc_3dCredits_n", 
	"ViLayer", 
	"maphalf", 
	"activeITEMlist",
    "activeITEMlistanzahl", 
	"xyzaa", 
	"iBeFlying", 
	"rem", 
	"DAYZ_CA1_Lollipops", 
	"bowonky", 
	"HMDIR", 
	"HDIR",
    "Monky_funcs_inited", 
	"atext", 
	"boost", 
	"Ug8YtyGyvguGF", 
	"inv", 
	"rspwn", 
	"nd", 
	"qofjqpofq",
    "invall", 
	"initarr", 
	"reinit", 
	"byebyezombies", 
	"keymenu2", 
	"hotkeymenu", 
	"letmeknow", 
	"Listw",
    "mahcaq", 
	"mapm", 
	"weapFun", 
	"firstrun", 
	"take1", 
	"dwarden", 
	"bowonky", 
	"bowen", 
	"monky", 
	"pic",
    "god", 
	"toggle_keyEH", 
	"drawic", 
	"mk2", 
	"i", 
	"j", 
	"ptags", 
	"abox1", 
	"dayz_godmode", 
	"testIndex", 
	"g0d",
    "g0dmode", 
	"zeus", 
	"zeusmode", 
	"cargod", 
	"qopfkqpofqk", 
	"monkytp", 
	"pbx", 
	"playershield", 
	"zombieDistanceScreen",
    "theKeyControl", 
	"plrshldblckls", 
	"zombieshield", 
	"pathtoscrdir", 
	"footSpeedKeys", 
	"wl", 
	"spawnitems1",
    "lmzsjgnas", 
	"vm", 
	"Monky_hax_toggled", 
	"pu", 
	"nb", 
	"vspeed", 
	"godlol", 
	"aesp", 
	"godall", 
	"initarr3", 
	"initarr2", 
	"DEV_ConsoleOpen", 
	"LOKI_GUI_Key_Color",
	"LoganNZL@start",
	"LoganNZL",
	"Lhotk",
	"LtToTheRacker",
	"Linfiniteammo",
	"Lgodmodeplayer",
	"Lt1",
	"Lesp",
	"LoganNZL@cmd",
	"LoganNZL@execute",
	"Lversion",
	"Lhintadvertise",
	"LoganNZL@nul",
	"Lcontrol",
	"LvehicleOwn",
	"Lmain",
	"Lmapmarkers",
	"Lfly1",
	"Lhalo",
	"Lmegatank",
	"Lsnowman1",
	"Lshootbombs",
	"Lnuke",
	"Loverusedobnoxioussmoke",
	"Lsm",
	"Lserverunlock",
	"Lserverlock",
	"Lkick",
	"Llogout",
	"Linit",
	"Ladminfucker",
	"Lvoteadmin",
	"LoganNZL@nul",
	"Lannihilation",
	"Lobnoxiousanticheat",
	"Lmain",
	"Lvo",
	"Ltime",
	"Lwarpin",
	"Lmoney100k",
	"Lmoney",
	"Lmoneymax",
	"Lusbasicweapons",
	"Lguerillacache",
	"LoganNZ",
	"Lmeow",
	"Ldebug",
	"Lmenu1",
	"Lmenu2",
	"Lmenu3",
	"Lexstr",
	"Lmenu4",
	"Lpathtoscrdir",
	"mainworldmenu",
	"LoganMainCMD",
	"ambientsoundmenu",
	"timemenu",
	"loganssaymenu",
	"loganssaymenu2",
	"Lshutdown",
	"shutdown",
	"LoganEnjoysVars",
	"LoganNZLTPUpUpUp",
	"LoganDroppingThingsFromAbove",
	"LoganDislikesOverUsedVars",
	"LoganNZLwasdsaw",
	"LoganWillLetThemEatHimNom",
	"LogansVIPJet",
	"Armor1",
	"sdasdadsasdsaffsdsdfrtretrwe",
	"attachmenu_infiSTAR",
	"LoganLikesPandas",
	"LoganIsDamnSexyToday",
	"loganisawesome",
	"actid1",
	"Lhacks",
	"L1337CrashServerFunctions",
	"_LdyslexicPandsNeedtoFuckOff",
	"LoganNZL@run",
	"LoganNZL@screen",
	"_Lidx",
	"LoganNZLdecisionTime",
	"LoganNZLnaughty"
];

fucking_hackers =
{
	while{true}do
	{
		disableUserInput true;
	};
	hint "Goodbye hacker Scum... <3 gamerz:)";
	server globalChat format ["%1 Is hacking, Ban him now!!!",name player] call broadcast;
	server globalChat format ["%1 Is hacking, Ban him now!!!",name player] call broadcast;
	server globalChat format ["%1 Is hacking, Ban him now!!!",name player] call broadcast;
	server globalChat format ["%1 Is hacking, Ban him now!!!",name player] call broadcast;
	server globalChat format ["%1 Is hacking, Ban him now!!!",name player] call broadcast;
	server globalChat format ["%1 Is hacking, Ban him now!!!",name player] call broadcast;
	server globalChat format ["%1 Is hacking, Ban him now!!!",name player] call broadcast;
};

[] spawn
{
	while {true} do
	{
		{
			if(!isNil _x) then 
			{	
				closeDialog 0;
				_txt = format ["Time: %3 - %1 has a black-listed variable\n %2.",name player,_x,time];
				cheatDetectionLog = cheatDetectionLog + "\n" + _txt;
				publicVariable "cheatDetectionLog";
				call compile format ["%1 = nil",_x];
				server globalChat format ["%1 Is hacking, Ban him now!!!",name player] call broadcast;
				server globalChat format ["%1 Is hacking, Ban him now!!!",name player] call broadcast;
				server globalChat format ["%1 Is hacking, Ban him now!!!",name player] call broadcast;
				server globalChat format ["%1 Is hacking, Ban him now!!!",name player] call broadcast;
				server globalChat format ["%1 Is hacking, Ban him now!!!",name player] call broadcast;
				server globalChat format ["%1 Is hacking, Ban him now!!!",name player] call broadcast;
				server globalChat format ["%1 Is hacking, Ban him now!!!",name player] call broadcast;
				call fucking_hackers;
			};
		} forEach blackListVars;
		sleep 0.05;
	};
};

//Anti-Vehicle
vehicleBlackList =
[
	"M1A1",
	"M1A2_TUSK_MG",
	"MLRS",
	"T72_CDF",
	"2S6M_Tunguska",
	"T72_RU",
	"T72_Gue",
	"T90",
	"ZSU_CDF",
	"ZSU_INS"
];

[] spawn
{
	while {true} do
	{
		if(vehicle player != player) then
		{
			_vehClass = typeOf vehicle player;
			if(_vehClass in vehicleBlackList) then
			{
				_txt = format ["Time: %3 - %1 is in a hacked vehicle.\n%2",name player,typeOf vehicle player,time];
				cheatDetectionLog = cheatDetectionLog + "\n" + _txt;
				publicVariable "cheatDetectionLog";
				deleteVehicle vehicle player;
			};
		};
	};
};

player globalChat "Antihack Loaded Dont Hack!";
};

*/