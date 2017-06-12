enableSaving [false, false];
WEST setFriend [EAST, 1];
EAST setFriend [WEST, 1];
version        	= "1.01";
compatible     	= 102;
internDebug    	= false;
debug          	= false;
addonversion   	= false;
dedicatedServer = false;
copscount      	= 22;
civscount      	= 30;
playercount    	= 52;
debugarray     	= [];
StartMoney     	= 50000;
nopop	   	= true;	
canuseshopagain = 1;

maxfacworkers2 = 90;
facworkercost2 = 5000;


execVM "briefing.sqf";
call compile preprocessfile "triggers.sqf";

if(!debug)then{["basicintro"]execVM "introcam.sqf";};

if(local Server)then{execVM "targets.sqf";};

waitUntil { ( (time > 1) and ((alive player) or (local server)) ) };

_h = [] execVM "playerarrays.sqf";																																			

waitUntil{scriptDone  _h};

_h = [53, rolenumber] execVM "initfuncs.sqf";

waitUntil{scriptDone  _h};

_h = [playerarray, playerstringarray, !iscop] execVM "INVvars.sqf";

waituntil{scriptDone  _h};

_h = [] execVM "bankexec.sqf";

waitUntil{scriptDone  _h};

_h = []	execVM "execlotto.sqf";

waitUntil{scriptDone  _h};

_h = [] execVM "initWPmissions.sqf";

waitUntil{scriptDone  _h};

_h = [] execVM "gfx.sqf";

waitUntil{scriptDone  _h};

_h = [] execVM "animList.sqf";

waitUntil{scriptDone  _h};

_h = []	execVM "miscfunctions.sqf";

waitUntil{scriptDone  _h};

_h = [] execVM "variables.sqf";

waitUntil{scriptDone  _h};




[SkipTimeDay, SkipTimeNight, 1] execVM "skiptime.sqf"; 
[] execVM "weather.sqf";
setPitchBank = compile preprocessfile "setPitchBank.sqf";

publicvariable "station1robbed";
publicvariable "station2robbed";
publicvariable "station3robbed";
publicvariable "station4robbed";
publicvariable "station6robbed";

if(!dedicatedserver) then


{

["clientloop"] execVM "commonloop.sqf";
[0,0,0,["clientloop"]] execVM "gangs.sqf";
[] execVM "respawn.sqf";
[] execVM "itemactions.sqf";
[] execVM "petrolactions.sqf";
//[] execVM "holsterscriptveh.sqf";
[] execVM "SpeedCams.sqf";
[] execVM "nametags.sqf";
[] execVM "initplayer.sqf";
//[] execVM "teargas.sqf";
[] execVM "power.sqf";
[] execVM "HQbomb.sqf";
[2] execVM "markers.sqf";
[3] execVM "markers.sqf";
[] execVM "salaries.sqf";
[] execVM "actions.sqf";
[] execVM "wd.sqf";
[] execVM "SWATCHANGE.sqf";
//
null = this execVM "dll_tow\enabletowing.sqf";
[] execVM "antigull.sqf";
[] execVM "BTK\Cargo Drop\Start.sqf";
[] execVM "loanstrt.sqf";
[] execVM "New.sqf";
[] execVM "Slots.sqf";
[] execVM "antihack2\SSAntihackInit.sqf";
[] execVM "antigull.sqf";
[] execVM "BTK\Cargo Drop\Start.sqf";
[] execVM "antihack\SSAntihackInit.sqf";
[] execVM "INSLimitedAdmin\initAH.sqf";
[] execVM "anti-hack.sqf";
[] execVM "Blackmarket.sqf";
[] execVM "Blackmarket real.sqf";
[] execVM "WelcomeA.sqf";
[] execVM "menuV2.sqf";
[] execVM "WelcomeO.sqf";
[] execVM "antihack.sqf";
[] execVM "hunting.sqf";
[] execVM "slots.sqf";
[] execVM "admintools\loop.sqf";
[] execVM "admintools\Activate.sqf"
execVM "anti-hack.sqf";
execVM "INSLimitedAdmin\initAH.sqf";


for [{_i=0}, {_i < (count INV_ItemFabriken)}, {_i=_i+1}] do {_i execVM "facqueue.sqf"};

player addEventHandler ["fired", {["fired", (_this select 4), (_this select 1)] execVM "stun.sqf";}];
player addEventHandler ["handleDamage", {_this call compile preprocessfile "sethit.sqf"}];

onKeyPress = compile preprocessFile "onKeyPress.sqf";
waituntil {!(IsNull (findDisplay 46))};
(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call onKeyPress"];

};

if (isServer) then 

{

["serverloop1"]	execVM "commonloop.sqf";
//[] execVM "weaponconvoy.sqf";
//[1] execVM "markers.sqf";
[0, 0, 0, "serverloop"] execVM "recruitai.sqf";
[0, 0, 0, ["serverloop"]] execVM "mayor.sqf";
[0, 0, 0, ["serverloop"]] execVM "chief.sqf";
[0, 0, 0, ["serverloop"]] execVM "gangs.sqf";
[] execVM "druguse.sqf";
[] execVM "drugreplenish.sqf";
["Mi17_medevac_CDF"] execVM "copchoprespawn.sqf";
["MH60S"] execVM "copchoprespawn.sqf";
[] execVM "HQbomb.sqf";
[] execVM "robpool.sqf";
[] execVM "hunting.sqf";
[] execVM "setObjectPitches.sqf";



//=======================rob gas station init and variables================
[] execVM "stationrobloop.sqf";
station1money = 5000;
publicvariable "station1money";

station2money = 5000;
publicvariable "station2money";

station3money = 5000;
publicvariable "station3money";

station4money = 5000;
publicvariable "station4money";

station6money = 5000;
publicvariable "station6money";

station8money = 5;
publicvariable "station8money";

for [{_i=0}, {_i < (count INV_ItemShops)}, {_i=_i+1}] do {((INV_ItemShops select _i) select 0) execVM "nomove.sqf"; sleep 0.2;};
for [{_i=0}, {_i < (count workplacejob_deliveryflagarray)}, {_i=_i+1}] do {(workplacejob_deliveryflagarray select _i) execVM "nomove.sqf"; sleep 0.2;};

};


_CivStaff = [
"78012423", 	
"50360007",
"88507904",
"78124679",
"67475847",
"89075527",
"90660295",
"67714816",
"79909383",
"40808519",
"98384576",
"42179207",
"79909383",
"96599495",
"78140544",	
];

if(player == civ1 || player == civ29) then
{
	if(!(getPlayerUID player in _CivStaff)) exitWith {server globalchat format ["%1, YOU ARE NOT STAFF, GET OUT OF THIS SLOT",name player]; sleep 4; endMission "loser"};
};

if(player == civ28 || player == civ30) then
{
	if(!(getPlayerUID player in _CivStaff)) exitWith {server globalchat format ["%1, YOU ARE NOT STAFF, GET OUT OF THIS SLOT",name player]; sleep 4; endMission "loser"};
};

if(player == cop1 || player == cop2) then
{
	if(!(getPlayerUID player in _CivStaff)) exitWith {server globalchat format ["%1, YOU ARE NOT STAFF, GET OUT OF THIS SLOT",name player]; sleep 4; endMission "loser"};
};

if(player == cop3 || player == cop4) then
{
	if(!(getPlayerUID player in _CivStaff)) exitWith {server globalchat format ["%1, YOU ARE NOT STAFF, GET OUT OF THIS SLOT",name player]; sleep 4; endMission "loser"};
};

if(player == cop5 || player == cop4) then
{
	if(!(getPlayerUID player in _CivStaff)) exitWith {server globalchat format ["%1, YOU ARE NOT STAFF, GET OUT OF THIS SLOT",name player]; sleep 4; endMission "loser"};
};

if ((iscop) and (_UID in _CivStaff)) then {
	disableuserinput false;
	player groupChat format["Welcome to Chernarus, Officer %1. Stay safe out there and Good Luck.", name player];
	
	
	if ((iscop) and !(_UID in _CivStaff)) then {
	disableuserinput true;
	player groupChat format["%1. You are not a trained cop please contact Lance admin.", name player];
};

//Stat save function
waitUntil {time > 0};

execVM "statSave\saveFuncs.sqf";
waitUntil {!isNil "saveFuncsLoaded"};

if(isServer) then
{
	_serverHasID = profileNameSpace getVariable ["ss_ServerID",nil];
	if(isNil "_serverHasID") then
	{
		_serverID = str(round((random(100000)) + random 10000));
		profileNameSpace setVariable ["SS_ServerID",_serverID];
	};
	serverID = profileNameSpace getVariable "ss_ServerID";
	publicVariable "serverID";
};

waitUntil {!isNil "serverID"};


if(!isDedicated) then
{
	execVM "statSave\loadAccount.sqf";
	execVM "statSave\saveLoop.sqf";
};

// Define Variables

gcrsrope1 = "none";
gcrsrope2 = "none";
gcrsrope3 = "none";
gcrsrope4 = "none";
gcrsrope5 = "none";
gcrsrope6 = "none";
gcrsrope7 = "none";
gcrsrope8 = "none";
gcrsrope9 = "none";
gcrsrope10 = "none";
gcrsrope11 = "none";
gcrsrope12 = "none";
gcrsrope13 = "none";
gcrsrope14 = "none";
gcrsrope15 = "none";
gcrsrepelvehicle = "none";
gcrsropedeployed = "false";
gcrsdeployropeactionid = 0;
gcrsdropropeactionid = 0;
gcrsplayerrepelactionid = 0;
gcrsplayerveh = "none";
gcrspilotvehicle = "none";
gcrsrapelvehiclearray = ["MH60S", "MV22", "Mi17_Civilian", "Mi17_Ins", "Mi17_CDF", "Mi17_RU", "Mi17_rockets_RU", "Mi24_D", "Mi24_P", "Mi24_V", "UH1Y"];
gcrsrapelheloarray = [];
gcrsplayerveharray = [];
// End GeneralCarver's Rapel Script Init Scripting

// GeneralCarver's Vehicle Rearming Script Init Scripting

// Define variables
gcvrspv = "none";
gcvrsactionid = 0;
gcvrsservicescriptactive = "false";
gcvrsrespawnnotescript = "none";

// End GeneralCarver's Vehicle Rearming Script Init Scripting
[] execVM "loadclient.sqf";