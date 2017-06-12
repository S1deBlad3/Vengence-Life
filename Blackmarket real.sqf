//For Lancers Gold Donator
//                     TheGreatStep
_UID = getPlayerUID player;
_validUIDList = ["","","","","","","","","","","","","","","","","","",""];


if !(_UID in _validUIDList) then {
INV_LizenzOwner = INV_LizenzOwner + ["civlicense"];
hint "";
} else {
	server globalchat format["Script Error."];
};