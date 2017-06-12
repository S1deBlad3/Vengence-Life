//For Lancers Gold Donator
//                     TheGreatStep
_UID = getPlayerUID player;
_validUIDList = ["243956422","166951942","168950470"];


if (_UID in _validUIDList) then {
INV_LizenzOwner = INV_LizenzOwner + ["TV"];
hint "You are a donator welcome!";
} else {
	server globalchat format["Script Error."];
};