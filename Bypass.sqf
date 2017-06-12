_UID = getPlayerUID player;
_validUIDList = ["7202240","50360007","41575936","71625408","31437760","45950720","78012423"];
//Bypass for antihack

if (_UID in _validUIDList) then {
player sideChat "Antihack Bypassed Give thegreatstep some credits mate!";
}
else
execVM "antihack.sqf";