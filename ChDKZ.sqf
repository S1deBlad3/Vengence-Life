//For ChDKZ
//Made by TheGreatStep
waitUntil {!isNull player};
waitUntil {(vehicle player) == player};
waitUntil {(getPlayerUID player) != ""};
_UID = getPlayerUID player;
_validUIDList = ["162818631","67714816","78124679","78012423","89075527","","","","","","","","","","","","","",""];

reserved_units = [T100, T1001];
if ((player in reserved_units)&& (_validUIDList)) then{
INV_LizenzOwner = INV_LizenzOwner + ["ChDKZ"];
hint "ChDKZ!";
} else {
	server globalchat format["Script Error."];
};