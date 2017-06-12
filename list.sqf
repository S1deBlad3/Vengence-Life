//This is the first dialog that comes up

adminMenu_Players = playableUnits;
_x = player;
_uid = getPlayerUID player;
_walking = isWalking player;
//_form = format ["player:%1", _x];
lbAdd [1500, format ["player: %1", _x]];
lbAdd [1500, "Hinting"];
lbAdd [1500, "GodMode"];
lbAdd [1500, "Player activity"];
lbAdd [1500, "Teleport"];
lbAdd [1500, "Start script 2"];
lbSetCurSel [1500,0];
