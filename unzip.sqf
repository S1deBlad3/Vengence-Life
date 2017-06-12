_civ = civmenuciv;
/*
hint format ["Animstate:%1",animationstate civ1];
copytoclipboard animationstate civ1;
*/


//=====================================Unzip=========================================

if(animationstate _civ == "unaercposlechvelitele1" || animationstate _civ == "unaercposlechvelitele4") exitwith

{
zipping = 0;
(format ["%1 switchmove ""%2"";", _civ, "normal"]) call broadcast;
detach _civ;
player groupchat "You unziptied the civilian!";

};

//==================================zip=========================================
if("ziptie" call INV_GetItemAmount < 1) exitwith {player groupchat "You need a zip tie in your inventory in order to use this function."};

if(vehicle _civ != _civ)exitwith{player groupchat "the civ is in a vehicle!"};

if (!(civmenuciv call ISSE_IsVictim)) exitwith {player groupchat "Their hands are not on their head or they aren't stunned."};
["ziptie",-1] call INV_AddInventoryItem;

(format ["%1 switchmove ""%2"";", _civ, "unaercposlechvelitele1"]) call broadcast;
cuffing = 1;
_civ attachto [vehicle player,[0,1,0]];
execvm "gamerz\zipchecking.sqf";
_cop = player;
(format['server globalchat "%3 was ziptied by someone!";if (rolestring == "%1") then {[%4] execVM "unzip.sqf";}', _civ, name player, name _civ,_cop]) call broadcast;

