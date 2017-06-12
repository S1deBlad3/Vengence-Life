_civ = civmenuciv;
/*
hint format ["Animstate:%1",animationstate civ1];
copytoclipboard animationstate civ1;
*/


//=====================================Uncuff=========================================

if(animationstate _civ == "unaercposlechvelitele1" || animationstate _civ == "unaercposlechvelitele4") exitwith

{
cuffing = 0;
(format ["%1 switchmove ""%2"";", _civ, "normal"]) call broadcast;
detach _civ;
player groupchat "You uncuffed the civilian!";

};

//==================================Cuff=========================================

if(vehicle _civ != _civ)exitwith{player groupchat "the civ is in a vehicle!"};

if (!(civmenuciv call ISSE_IsVictim)) exitwith {player groupchat "Their hands are not on their head or they aren't stunned."};

(format ["%1 switchmove ""%2"";", _civ, "unaercposlechvelitele1"]) call broadcast;
cuffing = 1;
_civ attachto [vehicle player,[0,1,0]];
execvm "cuffchecking.sqf";
_cop = player;
(format['server globalchat "%3 was cuffed by %2";if (rolestring == "%1") then {[%4] execVM "stealthstick\Uncuff.sqf";}', _civ, name player, name _civ,_cop]) call broadcast;

