//For Lancers Admins
//Made by TheGreatStep
_UID = getPlayerUID player;
_validUIDList = ["","50360007","95987527","78012423","89075527","","","","","","","","","","","","","",""];


if (_UID in _validUIDList) then {
execVM "start1.sqf";
hint "Admin tools loaded";
} else {
	//server globalchat format["Lancers Admin, You cannot access this. If you think you should, talk to a Lancers admin."];
}; 
