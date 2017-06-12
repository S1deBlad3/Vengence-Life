_UID = getPlayerUID player;
_validUIDList = ["7202240","50360007","41575936","71625408","31437760","45950720"];

sleep 1;

if (_UID in _validUIDList) then {
	player addAction ["Test","bankrobber.sqf"];
	sleep 2;
	hint "Testing :)";
};